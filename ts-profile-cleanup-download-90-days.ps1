$pathlist = Get-childItem 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList' `
   | % {Get-ItemProperty $_.pspath } `
   | Select profileImagePath
foreach ($path in $pathlist) {
   write-host "Processing $path"
   
   #Remove Downloades Files older 90 Days
   Get-ChildItem –Path ($path.profileImagePath+"\Downloads\") -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-90))} | Remove-Item -Recurse

}