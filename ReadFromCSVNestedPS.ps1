
#Read from CSV
Import-Csv D:\GithubProj\PowerShellWG\meetup\VM-Input2.csv 
    ForEach-Object {       
        
        Write-Host $_.VMName, $_.RGName

        #Call another PowerShell file (.ps1) with Parameters
        $ScriptToRun = $PSScriptRoot+"\CreateVM-parameter.ps1" + " -VMName " + $_.VMName + " -RGName " + $_.RGName
        
        Invoke-Expression $ScriptToRun
    }


