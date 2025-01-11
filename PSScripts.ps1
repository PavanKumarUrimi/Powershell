#Create a varaible

$Greeting = "Hi"

$Name = "pavan"

#Create a file

New-Item -ItemType File -Name Greeting.txt 

#Add content to file

Set-content -Value $Greeting -Path .\Greeting.txt

#Append to file

Add-Content -Path .\Greeting.txt -Value $Name -NoNewline

# Display file content

Get-Content -Path .\Greeting.txt

#Get all Methods available

Get-Item -Path .\Greeting.txt | gm # from this output select what are all the required properties you need

#GetFile Properties

Get-Item -Path .\Greeting.txt | select LastAccessTime , LastWriteTime

#Modify the display name of the Output

Get-Item -Path .\Greeting.txt |Select @{name="LAT"; expression="LastAccessTime"} 

#Display only time

Get-Item -Path .\Greeting.txt |Select @{name="LAT"; expression={$_.LastAccessTime.Minute}} 

#Sort files based on size

Get-ChildItem -Path ./ | sort Length

#find files accessed less than 20 mins Still need to work on below syntax wrong

Get-ChildItem -Path .\ |Select FullName,  @{name="LAT"; expression={$_.LastAccessTime.Minute}} | where { $_.LAT -lt 10 }

Get-ChildItem -Path .\ |Select FullName,  @{name="LAT"; expression={$_.LastAccessTime}} 


