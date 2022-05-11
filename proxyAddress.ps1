[string]$proxydomain = "@yourdomain.com";
[string]$usersOU = "OU=USER,DC=yourdomain,DC=com";
[int]$count = 0 ;
Import-Module ActiveDirectory
Get-ADUser -Filter "*" -SearchScope Subtree -SearchBase "$usersOU" -Properties proxyAddresses, employeeType, givenName, Surname, UserPrincipalName | foreach-object {
  Write-Host "Bearbeite Nutzer: $_.SamAccountName"
  [string]$address = $_.givenName+"."+$_.Surname;
  [string]$mail = $_.UserPrincipalName;
  if ($_.Proxyaddresses -match $mail)
  {
  Write-Host "Ergebniss: proxyAddresses existiert bereits; Keine Aktion."
  }
  else
  {
  Set-ADUser -Identity $_.SamAccountName -Add @{proxyAddresses="SMTP:"+$address+$proxydomain}
  Set-ADUser -Identity $_.SamAccountName -Add @{mail=$mail} 
  Write-Host "Ergebniss: proxyAddresses hinzugefuegt"
  $count++
  }   
  }
Write-Host "Erfogreich bearbeitet: " $count "Benutzer" 
