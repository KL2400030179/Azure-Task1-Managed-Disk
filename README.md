# Task 1: Managed Disk with Azure PowerShell

**Student:** P. Rohith
**Student ID:** 2400030179
**University:** KL University
**Subscription:** Azure for Students
**Region:** Central India

## Task description

Use Azure Cloud Shell and Azure PowerShell to create a resource group and an Azure managed disk, then configure the disk.

## Steps performed

1. **Started a PowerShell session in Azure Cloud Shell** from the portal and selected PowerShell.
2. **Created a resource group and a managed disk.**
   - Resource group: `rg-disk-task1` (Central India)
   - Disk: `disk-task1`, 32 GB, Standard_LRS, empty
3. **Configured the managed disk.**
   - Resized the disk from 32 GB to 64 GB
   - Changed the SKU from Standard_LRS to Premium_LRS

## Final result

| Property | Value |
|----------|-------|
| Name | disk-task1 |
| Size | 64 GB |
| SKU | Premium_LRS |
| Provisioning state | Succeeded |

## Files

- `commands.ps1`: all PowerShell commands used, in order
- `screenshots/`: screenshots of each command and its output
