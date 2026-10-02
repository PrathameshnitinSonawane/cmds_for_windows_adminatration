# Powershell Commands

```bash

# get help of any command
# > Get-Help <command>
> Get-Help Get-NetAdapter

# get computer information
> Get-ComputerInfo

# get ip address of all interfaces
> Get-NetIPAddress

# get ip address of only required interface
> Get-NetIPAddress -InterfaceAlias Ethernet

# get the adapter interface name
> Get-NetAdapter

# remove existing ip address from ethernet interface
# confirm:$false wont ask user to confirm the parameters
> Remove-NetIPAddress -InterfaceAlias Ethernet -AddressFamily ipv4 -Confirm:$false

# set the new ip address of ethernet interface
> New-NetIPAddress -IPAddress 192.168.1.100 -PrefixLength 24 -AddressFamily ipv4 -InterfaceAlias Ethernet

# change the host name
# note: the machine will automatically restart
> Rename-Computer -NewName "DC01" -Restart

# confirm the host name
> hostname

# set the dns address to the self IP address
> Set-DnsClientServerAddress -InterfaceAlias Ethernet -ServerAddresses 192.168.1.100

# confirm the dns settings
> Get-DnsClientServerAddress

# set the timezone setting
> Set-TimeZone -Id "India Standard Time"

# get the current timezone
> Get-TimeZone

# get the current status of AD DS feature
> Get-WindowsFeature Ad-Domain-Services

# enable the domain service feature
> Install-WindowsFeature -Name Ad-Domain-Services -IncludeManagementTools

# install Active Directory Forest by promoting the current machine to domain controller
> Install-ADDSForest -DomainName "sunbeam.local" -DomainNetBiosName "SUNBEAM" -DomainMode "Win2025" -ForestMode "Win2025" -InstallDns:$true -DatabasePath "C:\Windows\NTDS" -LogPath "C:\Windows\NTDS" -SysVolPath "C:\Windows\SYSVOL" -CreateDnsDelegation:$false -SafeModeAdministratorPassword (Read-Host -Prompt "Enter password: " -AsSecureString) -Force:$true

# confirm if the domain is configured by getting the forest information
> Get-ADForest

# confirm if the domain is configured by getting the domain information
> Get-ADDomain

# get the information about the domain controller
> Get-ADDomainController

# create a new organizational unit (OU)
> New-ADOrganizationalUnit -Name "Sunbeam Users" -Path "DC=sunbeam,DC=local"

# get the list of all OUs
> Get-ADOrganizationalUnit -Filter *

# get the list of all computers
> Get-ADComputer -Filter *

# get the list of all users
> Get-ADUser -Filter *

# get the list of all groups
> Get-ADGroup -Filter *

# create a new user
> New-ADUser -Name "John Doe" -GivenName "John" -Surname "Doe" -UserPrincipalName "jdoe@sunbeam.local" -SamAccountName "jdoe" -Path "CN=Users,DC=sunbeam,DC=local" -AccountPassword (ConvertTo-SecureString "Test*1234" -AsPlainText -Force) -Enabled:$true

```

# Linux Commands

```bash

# update the IP address
# interface: enp0s3
# IP Address: 192.168.1.110/24
# Gateway Address: 192.168.1.100
# DNS address: 192.168.1.100
> sudo nmtui

# get the IP address
> ip address show
> ip a

# reboot the machine after changing the network adapter from virtual box
> sudo reboot

# install required packages
> sudo dnf install -y realmd oddjob sssd oddjob-mkhomedir adcli  samba-common-tools krb5-workstation

# check if the domain can be discovered
> sudo realm discover "sunbeam.local"

# joing the domain
> sudo realm join "sunbeam.local" -U Administrator

```
