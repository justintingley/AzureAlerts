
param($eventGridEvent, $TriggerMetadata)

# Declarations

$errorActionDefault = $ErrorActionPreference

# Channel Webhook.
# AzureAlertsChannel
$ChannelURL = ""
# TestingChannel
#$ChannelURL = ""

# Subscription ID
#$SubscriptionId = "Sub1"
#$SubscriptionId = "Sub2"
#$SubscriptionId = "Sub3"
#$SubscriptionId = "Sub4"
#$SubscriptionId = "Sub5"


if ($eventGridEvent.data.authorization.action -like "Microsoft.Compute/virtualMachines/delete") {
    
    $ActivityType = "Virtual Machine"

    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Resources/subscriptions/resourceGroups/delete" ) {
    
    $ActivityType = "Resource Group"

    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[4]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/virtualNetworks/delete" ) {
    
    $ActivityType = "VNET"
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/virtualNetworks/subnet/delete" ) {
    
    $ActivityType = "Subnet"
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[10]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Web/serverfarms/delete" ) {
     
    $ActivityType = "App Service Plan”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Web/sites/delete" ) {
     
    $ActivityType = “Function App”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Storage/storageAccounts/delete" ) {
     
    $ActivityType = “Storage Account”

    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Security/policies/delete" ) {
     
    $ActivityType = “Security Policy”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Security/webApplicationFirewalls/delete" ) {
     
    $ActivityType = “Web Application Firewall”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/applicationGateways/delete" ) {
     
    $ActivityType = "Application Gateway”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/ApplicationGatewayWebApplicationGatewayFirewallPolicies/delete" ) {
     
    $ActivityType = "Application Gateway WAF Policy”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/applicationSecurityGroups/delete" ) {
     
    $ActivityType = “Application Security Group”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/azurefirewalls/delete" ) {
     
    $ActivityType = "Azure Firewall”

    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/frontDoors/delete" ) {
     
    $ActivityType = “Front Door”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Network/virtualNetworkGateways/delete" ) {
     
    $ActivityType = “Virtual Network Gateway”

    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Web/customApis/delete" ) {
     
    $ActivityType = “Custom API”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Web/hostingEnvironments/delete" ) {
     
    $ActivityType = “App Service Environment”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.DocumentDB/databaseAccounts/sqlDatabases/delete" ) {
     
    $ActivityType = “SQL Database”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.ManagedIdentity/userAssignedIdentities/delete" ) {
     
    $ActivityType = “User Assigned Identity”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Authorization/classicAdministrators/delete" ) {
     
    $ActivityType = “Subscription Administrator”

    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Logic/workflows/delete" ) {
     
    $ActivityType = “Logic App Workflow”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.KeyVault/vaults/delete" ) {
     
    $ActivityType = “Key Vault”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Insights/MyWorkbooks/Delete” ) {
     
    $ActivityType = “Workbook”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.OperationsManagement/Solutions/delete” ) {
     
    $ActivityType = “Operations Management Suite (OMS)”
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.ContainerRegistry/registries/delete" ) 
{
    
    $ActivityType = "Container"
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Authorization/roleAssignments/delete" ) 
{
    
    $ActivityType = "Role-Based Access Control (RBAC)"
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
elseif ($eventGridEvent.data.authorization.action -like "Microsoft.Authorization/roleDefinitions/delete" ) 
{
    
    $ActivityType = "Role-Based Access Control (RBAC)--Edited"
    
    try {
        $ErrorActionPreference = 'stop'
        $subjectSplit = $eventGridEvent.subject -split '/'
        $typeName = $subjectSplit[8]
    }
    catch {
        $ErrorMessage = $_.Exception.message
        write-error ('Error getting Resource Group name ' + $ErrorMessage)
        Break
    }
    Finally {
        $ErrorActionPreference = $errorActionDefault
    }
}
else {
    write-error 'No activity type defined in script.  Verfiy Event Grid Filter matches IF statement'
    Break
}

$TargetURL = "https://portal.azure.com/#resource" + $eventGridEvent.data.resourceUri + "/overview"   
try {    
    $Body = ConvertTo-Json -ErrorAction Stop -Depth 4 @{
        title           = 'Azure Notification'
        text            = 'A new Azure ' + $activityType + ' has been deleted' 
        sections        = @(
            @{
                activityTitle    = 'New Azure ' + $ActivityType
                activitySubtitle = 'Azure ' + $ActivityType + ' named ' + $typeName + ' has been deleted.'
                activityText     = 'An Azure ' + $ActivityType + ' was deleted in the subscription ' + $SubscriptionId + ' by ' + $eventGridEvent.data.claims.name
                activityImage    = "https://www.iconsdb.com/icons/preview/soylent-red/cloud-4-xxl.png"
            }
        )
        potentialAction = @(@{
                '@context' = 'http://schema.org'
                '@type'    = 'ViewAction'
                name       = 'Click here to manage the Resource Group'
                target     = @($TargetURL)
            })
    }
}
catch {
    $ErrorMessage = $_.Exception.message
    write-error ('Error converting body to JSON ' + $ErrorMessage)
    Break
}

try {
    write-output '## Invoke-ResgtMethod ##'
    Invoke-RestMethod -Method "Post" -Uri $ChannelURL -Body $Body | Write-output
}
catch {
    $ErrorMessage = $_.Exception.message
    write-error ('Error with invoke-restmethod ' + $ErrorMessage)
    Break
}
