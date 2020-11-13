ForEach ($computer in (Get-Content "C:\Burwood Powershell Outputs\results.txt"))
{
Get-ADObject -filter * -Searchbase $computer | format-list | Out-File -Filepath "C:\Burwood Powershell Outputs\childobjectresults.txt" -append
}
