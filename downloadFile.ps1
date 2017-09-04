#Powershell Script to download the file from artifactory

#artifactory URL
$SOURCE = "http://localhost:8081/artifactory/webapp/#/artifacts/browse/tree/General/example-repo-local/test.txt"  
$DESTINATION = "D:\Test\download\Pega.zip"  

#enter credentials 
$AF_USER ="admin"  
$AF_PWD ="user"  

$WebClient = New-Object System.Net.WebClient  

#authentication
$WebClient.Credentials = New-Object System.Net.NetworkCredential($AF_USER,$AF_PWD)

#Downloading the File  
$WebClient.DownloadFile($SOURCE,$DESTINATION) 


#Calling the other unzip.script to move the file categorely and unzip
Invoke-Expression D:\code\unzip.ps1 