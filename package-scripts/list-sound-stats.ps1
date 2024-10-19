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

  $script:lufs = ffmpeg -i $file -af ebur128=framelog=verbose -f null - 2>&1 | grep -e "Integrated loudness:" -A 8
  $script:lufsFormatted = ((($lufs.split('\n').where{$_ -ne ''}) | foreach-object -membername trim) -join [environment]::newline)

  $script:statsLine = "# ${relativePath}$([environment]::newline)${channelsFormatted}$([environment]::newline)${lufsFormatted}$([environment]::newline)"
  if ($out -ne '') {
    $statsLine | out-file -filepath $out -append
  } else {
    echo $statsLine
  }
}
