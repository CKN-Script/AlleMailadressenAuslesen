clear


$Apps = Get-AppPackage *Desk*
foreach ($App in $Apps)
{
        if ($App.Dependencies.Count -gt 0) # Filtert alle Apps die keine Abhängigkeiten haben.
        {
            Write-host $App.Name '(Abhängigkeiten:' $App.Dependencies.Count ')'
            echo ***********************

            $Deps = $App.Dependencies
            foreach ($Dep in  $Deps) 
            {
                Write-Host $Dep
            }

        }

    Start-Sleep -Seconds 1
    echo ""
    
}