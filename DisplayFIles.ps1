#Powershell script to find the list of files accessed/modifies in last X min

$CutOffTimeInValue =10

$ListOfFiles= Get-ChildItem -Path C:\Users\Pavan\Documents\PowerShellPractice

$CutOffTime =(Get-Date).AddMinutes(-$CutOffTimeInValue)

foreach($file in $ListOfFiles)
{
if($file.LastAccessTime -gt $CutOffTime){
    Write-Host "$file is accessed in Last $CutOffTimeInValue minutes ..!" -ForegroundColor DarkGreen -BackgroundColor Black
}

else
{
  Write-Host "$file is not accessed in Last $CutOffTimeInValue minutes ..! " -ForegroundColor Red -BackgroundColor black
}

}