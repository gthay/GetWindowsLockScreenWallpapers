

$savingPath = "C:\Users\" + $env:UserName + "\Pictures\Windows Lock Screen Pictures\"
$sourcePath = "C:\Users\" + $env:UserName + "\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets\"

Remove-Item $savingPath -Recurse -ErrorAction Ignore
New-Item -ItemType directory -Path $savingPath


$files = Get-ChildItem $sourcePath
foreach($file in $files)
{
    $pic = [System.Drawing.Image]::FromFile($file.FullName)
    if ($pic.Height -lt $pic.Width )
    {       
        Copy-Item -Path $file.FullName -Destination ($savingPath + $file.Name + ".jpg")
    }
}
