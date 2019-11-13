#Install the SqlServer module from the PowerShell gallery
Install-Module -Name SqlServer

#If the module is already installed, update it using the following commands:
#For PowerShell 5.0 or later
Update-Module -Name SqlServer

#For PowerShell version earlier than 5.0
Uninstall-Module -Name SqlServer
Install-Module -Name SqlServer