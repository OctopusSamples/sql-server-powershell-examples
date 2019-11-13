#Create the database by runnig straight SQL against your instance
# This query could also come from a file
Invoke-Sqlcmd -Query "CREATE DATABASE YourDB" -ServerInstance YourInstance

#OR

#Use SMO objects to do the heavy lifting:
#Name your database
$dbname = "YourDB"
# Create a SQL Server database object
$srv = New-Object Microsoft.SqlServer.Management.Smo.Server("YourInstance")
if($null -ne $srv.Databases[$dbname])
{
    $db = New-Object Microsoft.SqlServer.Management.Smo.Database($srv, $dbname)

    # Create the database
    $db.Create()
}