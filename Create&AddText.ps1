#PowerShells script to create files
$NoOfFiles =10
$Dir = "C:\Users\Pavan\Documents\PowerShellPractice"
for($i=1;$i -le $NoOfFiles;$i++)
{
New-Item -ItemType File -Name file$i.txt -Path $Dir
}

#Add text to the files

$ListOfFiles =Get-ChildItem -Path $Dir

foreach($file in $ListOfFiles)
{
Set-Content -Value "Hi" -Path $Dir\$file
}

#Append text to the files

foreach($file in $ListOfFiles)
{ 
Add-Content -Value "PAVAN" -Path $Dir\$file 
}

