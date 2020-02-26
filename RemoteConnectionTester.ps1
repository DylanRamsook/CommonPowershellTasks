##Test different methods of remotely connecting to other environments.  
#(Invoke-Command, PS-Session, FQDN, domain pw, no creds passed)

$thisMachine = $(hostname)
$targetmachine = "serverName"
$user = "dylan@DOMAIN"
$pass = ConvertTo-SecureString "PASSWORD" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ($user, $pass)

Enter-PSSession -ComputerName $targetmachine -Credential $creds

Write-Host $(hostname) -ForegroundColor Green
