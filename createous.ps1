
# Import Active Directory Module
Import-Module ActiveDirectory

# Create Root OU
# New-ADOrganizationalUnit 'Corp'

# Create Child OUs in Corp
$OUs = @(
    'Users'
    'Computer'
    'Servers'
    'Groups'
)
foreach($ou in $OUs) {
    New-ADOrganizationalUnit  -Path 'OU=Corp,DC=sos,DC=local' -Name $ou 
}
