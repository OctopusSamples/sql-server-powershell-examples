# Run a SQL script file
# Assumes you are working from the package directory
Invoke-Sqlcmd -InputFile .\alter_script.sql -ServerInstance YourInstance -Database YourDB

#OR

## Run Inline SQL Commands
$rowcount = "SELECT COUNT(*) FROM YourTable"
Invoke-Sqlcmd -ServerInstance YourInstance -Database YourDatabase -Query $rowcount