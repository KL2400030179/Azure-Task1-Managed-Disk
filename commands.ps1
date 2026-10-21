# Task 1: Create and configure an Azure managed disk using Azure PowerShell
# Run in Azure Cloud Shell (PowerShell)

# 1. Create a resource group
New-AzResourceGroup -Name rg-disk-task1 -Location centralindia

# 2. Create a managed disk configuration (32 GB, Standard_LRS, empty disk)
$diskConfig = New-AzDiskConfig -Location centralindia -CreateOption Empty -DiskSizeGB 32 -SkuName Standard_LRS

# 3. Create the managed disk
New-AzDisk -ResourceGroupName rg-disk-task1 -DiskName disk-task1 -Disk $diskConfig

# 4. View the disk
Get-AzDisk -ResourceGroupName rg-disk-task1 -DiskName disk-task1

# 5. Configure the disk: resize to 64 GB
New-AzDiskUpdateConfig -DiskSizeGB 64 | Update-AzDisk -ResourceGroupName rg-disk-task1 -DiskName disk-task1

# 6. Configure the disk: change the SKU to Premium_LRS
New-AzDiskUpdateConfig -SkuName Premium_LRS | Update-AzDisk -ResourceGroupName rg-disk-task1 -DiskName disk-task1

# 7. Verify the final configuration
Get-AzDisk -ResourceGroupName rg-disk-task1 -DiskName disk-task1 | Select-Object Name, DiskSizeGB, @{n='SKU';e={$_.Sku.Name}}, ProvisioningState

# 8. Cleanup (run only after the review is finished)
# Remove-AzResourceGroup -Name rg-disk-task1 -Force
