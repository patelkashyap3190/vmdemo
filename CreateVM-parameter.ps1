#stop VM
Param(    
    [string]$VMName,
    [string]$RGName,
)

Start-AzureRmVM -ResourceGroupName $RGName -Name $VMName
