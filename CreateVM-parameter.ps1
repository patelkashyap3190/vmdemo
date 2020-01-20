#stop VM
Param(    
    [string]$VMName,
    [string]$RGName,
)

Stop-AzureRmVM -ResourceGroupName $RGName -Name $VMName
