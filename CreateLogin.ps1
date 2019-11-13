# To run in a non-interactive mode, such as through an Octopus deployment, you will most likely need to pass the new login credentials as a PSCredential object.
$pass = ConvertTo-SecureString "Th!sI5Y0urP4ss" -AsPlainText -Force

# Create the PSCredential object
$loginCred = New-Object System.Management.Automation.PSCredential("NewUser",$pass)

# Create login using the Add-SqlLogin cmdlet
Add-SqlLogin -ServerInstance YourInstance -LoginPSCredential $loginCred -LoginType SqlLogin