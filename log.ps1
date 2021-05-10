$Log_File= "C:\LogFile.txt"

Clear-History
# You can do a file check using Test-Path followed by the path

## Out-file will give the output to the file, -Force will create the file if not existed and -append will append the data.
"starting the shell command" | Out-File $Log_File -Force -Append

Start-Process notepad -verbose

"Notepad started" | Out-File $Log_File -Append

Start-Sleep -s 5
Stop-Process -processname notepad -verbose

"Notepad stopped" | Out-File $Log_File -Force -Append

"List of commands which are executed are below: " | Out-File $Log_File -Force -Append
Get-History | Out-File $Log_File -Append