#--Check all VM state and detail
az vm list --show-detail -o table

#--List all VM name
az vm list --query "[].name" -o tsv

#--List all VM ID
az vm list --query "[].id" -o tsv

#--Deallocate all VM
az vm list --query "[].id" -o tsv | ForEach-Object {az vm deallocate --ids $_ --no-wait}

