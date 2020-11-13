ForEach ($computer in (Get-Content "C:\Burwood Powershell Outputs\comps.txt"))
{
(Get-ADComputer -Identity $computer).distinguishedname | Out-File -Filepath "C:\Burwood Powershell Outputs\results.txt" -append
}
