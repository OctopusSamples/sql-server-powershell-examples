#Restore database from backup rather than creating a blank database
$backupFile = "\\SQLBackups\YourDBBackup.bak"
Restore-SqlDatabase -ServerInstance YourInstance -Database YourDB -BackupFile $backupFile