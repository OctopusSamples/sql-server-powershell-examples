# Here we'll need a user with administrative privileges to set the owner
# Let's say that $SqlAdmin contains the username and $SqlAdminPass contains the password as a secure string
$dbname = "YourDB"

# Create the server connection object
$conn = New-Object Microsoft.SqlServer.Management.Common.ServerConnection("YourInstance", $SqlAdmin, $SqlAdminPass)

# Create the server object
$srv = New-Object Microsoft.SqlServer.Management.Smo.Server($conn)

# Check to see if a database with that name already exists
if($null -ne $srv.Databases[$dbname])
{
    # If it does not exist, create it
    $db = New-Object Microsoft.SqlServer.Management.Smo.Database($srv, $dbname)
    $db.SetOwner("NewOwner")
}
else
{
    # There was an error creating the database object
}