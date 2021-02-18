$pat=""
$orgazniation="dh-platforms-devops"

Set-VSTeamAccount https://dev.azure.com/$orgazniation/ -PersonalAccessToken $pat
$teams=get-vsteam -ProjectName 'app-data-hubs'

$teams |Out-GridView

foreach($t in $teams)
{
   Write-Host $t.Name
   $t |Get-VSTeamMember
}
