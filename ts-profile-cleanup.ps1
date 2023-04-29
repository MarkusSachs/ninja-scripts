$pathlist = Get-childItem 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList' `
   | % {Get-ItemProperty $_.pspath } `
   | Select profileImagePath
foreach ($path in $pathlist) {
   write-host "Processing $path"
   # Windows WebCache
   $Folder = $path.profileImagePath+"\AppData\Local\Microsoft\Windows\WebCache"
   if (Test-Path -Path $Folder ) {
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Microsoft\Windows\WebCache\*.*")
   }

   # LocalTemp
   $Folder = $path.profileImagePath+"\AppData\Local\Temp"
   if (Test-Path -Path $Folder ) {
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Temp\*.*")
   }

   #Chrome CacheFolder
   $Folder = $path.profileImagePath+"\AppData\Local\Google\Chrome"
   if (Test-Path -Path $Folder ) {
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Google\Chrome\User Data\Default\Cache\*")
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Google\Chrome\User Data\Default\Media Cache\*")
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Google\Chrome\User Data\Default\Service Worker\CacheStorage\*")
   }

   # Microsoft Edge
   $Folder = $path.profileImagePath+"\AppData\Local\Microsoft\Edge"
   if (Test-Path -Path $Folder ) {
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Microsoft\Edge\User Data\Default\Cache\*")
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Microsoft\Edge\User Data\Default\Media Cache\*")
   Remove-Item -Recurse -Force ($path.profileImagePath+"\AppData\Local\Microsoft\Edge\User Data\Default\Service Worker\CacheStorage\*")
   }

   #Remove Downloades Files older 90 Days
   Get-ChildItem –Path ($path.profileImagePath+"\Downloads\") -Recurse | Where-Object {($_.LastWriteTime -lt (Get-Date).AddDays(-90))} | Remove-Item

}
