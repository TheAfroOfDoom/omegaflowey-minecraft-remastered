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
  $script:fileLUFS = ffmpeg -i $file.fullname -af ebur128=framelog=verbose -f null - 2>&1 | grep -e I: -A 1
  $script:lufsFormatted = (($fileLUFS.split([environment]::newline)) -join " ").trim()
  $script:statsLine = "${relativePath}: $($lufsFormatted)"
  if ($out -ne '') {
    $statsLine | out-file -filepath $out -append
  } else {
    echo $statsLine
  }
}