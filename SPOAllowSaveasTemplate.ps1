Import-Module Microsoft.Online.SharePoint.Powershell
$tenantName = "aegon"
$SiteURL ="https://$($tenantName).sharepoint.com/sites/O365ExternalTeamTest"
Connect-SPOService -Url "https://$($tenantName)-admin.sharepoint.com"
Set-SPOsite $SiteURL -DenyAddAndCustomizePages 0


Start-SPOUnifiedGroupMove -GroupAlias InternationalUnderwriting -DestinationDataLocation NAM