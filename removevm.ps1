
$vmName='VM-01'

$vmID = $(az vm list --query "[?name=='$vmName'].id" -o tsv)

az vm deallocate --ids $vmID