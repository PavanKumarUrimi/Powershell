#Powershell script to Delete files older than X min

$CutOffTimeInValue =10

$ListOfFiles= Get-ChildItem -Path C:\Users\Pavan\Documents\PowerShellPractice

$CutOffTime =(Get-Date).AddMinutes(-$CutOffTimeInValue)

foreach($file in $ListOfFiles)
{
if($file.CreationTime -lt $CutOffTime){
    Write-Host "$file is created before $CutOffTimeInValue minutes ..!" -ForegroundColor DarkGreen -BackgroundColor Black
    Remove-Item -Path $file.FullName
    Write-Host "$file.FullName.....Deleting..! " -ForegroundColor Red -BackgroundColor black
}
}

