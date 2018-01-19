# This script assumes the user has followed the instructions listed in part 1 and part 2
# of this blog post: 
# http://www.red-gate.com/blog/database-lifecycle-management/how-to-build-multiple-database-versions-from-the-same-source-using-sql-compare-filters
 

# Stop script if error
$ErrorActionPreference = "stop"
 

# Config
$myDocuments = [Environment]::GetFolderPath("MyDocuments")
$source = "$myDocuments/Ponies_dev/state"
$serverinstance = "."
$databaseName = "Fluttershy"
$filterPath = "$myDocuments\Ponies_dev\filters\$databaseName.scpf" 

 
# Deploy DB using Redgate DLM Automation (including custom filter)
$target = New-DlmDatabaseConnection -ServerInstance $serverInstance -Database $databaseName | Test-DlmDatabaseConnection
Sync-DlmDatabaseSchema -Source $source -Target $target -filterPath $filterPath
 

# Post-deploy script
invoke-sqlcmd -inputfile "$myDocuments\Ponies_dev\postDeploys\fluttershyPostDeploy.sql" -ServerInstance $serverInstance -Database Fluttershy