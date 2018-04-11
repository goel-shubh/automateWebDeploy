#$azureAccountName =" enter account name"
 #$azurePassword = ConvertTo-SecureString "enter Password" -AsPlainText -Force

#$psCred = New-Object System.Management.Automation.PSCredential($azureAccountName, $azurePassword)

Login-AzureRmAccount 

New-AzureRmResourceGroup -Name 'shuhResource' -Location 'centralindia'
$resourceGroup = "shuhResource"
$location = "centralindia"
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroup -TemplateFile "C:\Users\Shubham\Desktop\web1\powershell-master\azuredeploy-app-service-with-git.json"  