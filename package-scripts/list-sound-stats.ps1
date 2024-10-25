[CmdletBinding()]
param(
  [string]$Path=".",
  [Parameter(mandatory=$false)]
  [string]$Out
)

# use `-path ./resourcepack/assets/omega-flowey/sounds` for this repo's omegaflowey sound files
# use `-path ./tmp/vanilla-sounds-normalization` for some vanilla sound references

$script:files = get-childitem -path $Path -filter "*.ogg" -recurse -file
if($out -ne '') {
  out-file -filePath $out
}

foreach ($script:file in $files) {
  $relativePath = $file | resolve-path -relative -relativeBasePath $path

  $script:channels = ffprobe -i $file -show_entries stream=channels -select_streams a:0 -of compact=p=0:nk=1 -v 0
  $script:channelsFormatted = "channels: ${channels}"

  $script:channelsVolumeDiffMax = "N/A"
  if($channels -eq 2) {
    $channelsVolumeDiffMax = `
      (
        ffmpeg -i $file -filter_complex "stereotools=phasel=1[tmp];[tmp]pan=1c|c0=0.5*c0+0.5*c1,volumedetect" -f null - 2>&1
        | grep max_volume
      ).split('max_volume: ')[1]
  }
  $script:channelsVolumeDiffMaxFormatted = "channelsVolumeDiffMax: ${channelsVolumeDiffMax}"

  $script:lufs = ffmpeg -i $file -af ebur128=framelog=verbose -f null - 2>&1 | grep -e "Integrated loudness:" -A 8
  $script:lufsFormatted = ((($lufs.split('\n').where{$_ -ne ''}) | foreach-object -membername trim) -join [environment]::newline)

  $script:sampleRate = ffprobe -v 0 -select_streams a:0 -show_entries stream=sample_rate -of compact=p=0:nk=1 $file
  $script:sampleRateFormatted = "sampleRate: ${sampleRate}"

  $script:statsLine = "# ${relativePath}$([environment]::newline)${channelsVolumeDiffMaxFormatted}$([environment]::newline)${channelsFormatted}$([environment]::newline)${sampleRateFormatted}$([environment]::newline)${lufsFormatted}$([environment]::newline)"
  if ($out -ne '') {
    $statsLine | out-file -filepath $out -append
  } else {
    echo $statsLine
  }
}
