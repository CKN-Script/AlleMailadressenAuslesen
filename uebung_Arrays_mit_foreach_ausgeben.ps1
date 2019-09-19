# $ErrorActionPreference = "SilentlyContinue"

. "$env:ExchangeInstallPath\bin\RemoteExchange.ps1"; 
Connect-ExchangeServer -auto

$ausgabepfad=".\"
$ausgabedatei=$ausgabepfad + "MailAdresses.csv"


clear
$error.clear()

$Mailboxes = Get-Mailbox
foreach ($Mailbox in $Mailboxes)
{

            Write-host $Mailbox.Name '(Anzahl Adressen:' $Mailbox.EmailAddresses.Count ')'
            echo ***********************

            $Adresses = $Mailbox.EmailAddresses
            foreach ($Adress in  $Adresses) 
            {
                Write-Host $Adress
		$Adress | Out-File -FilePath c:\test.txt
            }



    Start-Sleep -Seconds 1
    echo ""
    
}
