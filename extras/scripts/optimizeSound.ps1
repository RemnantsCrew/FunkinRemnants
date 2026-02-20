# would make a shell file but find would just not give proper paths??
# TODO: look into that

$MOD_ROOT = "../.."

Get-ChildItem $MOD_ROOT -Recurse -Filter *.ogg |
Foreach-Object {
  Write-Output $_.FullName
  ffmpeg -y -i $_.FullName "$($_.FullName)-remuxed.ogg"
  optivorbis "$($_.FullName)-remuxed.ogg" $_.FullName
  Remove-Item "$($_.FullName)-remuxed.ogg"
}