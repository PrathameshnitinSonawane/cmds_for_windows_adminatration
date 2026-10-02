# Users

## Creating Users

```bash

# create a new user
> New-ADUser -Name "Jane Doe" -GivenName "Jane" -Surname "Doe" -SamAccountName "janedoe" -UserPrincipalName "janedoe@sunbeam.local" -Path "CN=Users,DC=sunbeam,DC=local" -Password (ConvertTo-SecureString "Test*1234" -AsPlaintText -Force) -Enabled:$true -Department "HR" -Title "HR Manager"

```

## Getting Users

```powershell

# get the list of all users
> Get-ADUser -Filter *

# get basic information of a selected user
# > Get-ADUser -Identity <SamAccountName | SID | ObjectGUID>
> Get-ADUser -Identity "emusk"

# get all properties of selected user
> Get-ADUser -Identity "emusk" -Properties *

# get required properties (along with the basic properties) of selected user
> Get-ADUser -Identity "emusk" -Properties Department,Title

# find all the users of HR Department with basic properties
> Get-ADUser -Filter {Department -eq "HR"}

# find all the users of HR Department with selected properties
> Get-ADUser -Fitler {Department -eq "HR"} -Properties *
> Get-ADUser -Fitler {Department -eq "HR"} -Properties Department,Title

# find all CEOs with basic properties
> Get-ADUser -Filter {Title -like "*CEO*"}

```

## Performing Operations

```powershell

# change or reset password of an account
# > Set-ADAccountPassword -Identity <SamAccountName | ObjectGUID | SID> -Reset -NewPassword (ConvertTo-SecureString "<new password>" -AsPlainText -Force)
> Set-ADAccountPassword -Identity "bgates" -Reset -NewPassword (ConvertTo-SecureString "newpassword*1234" -AsPlainText -Force)

# set any attribute of a user
# > Set-ADUser -Identitity <identity> -<Attribute name> <new value>

# set title of john doe to Developer
> Set-ADUser -Identity "jdoe" -Title "Developer"

# unlock the user account
> Unlock-ADAccount -Identity "jdoe"

# Enable an account
> Enable-ADAccount -Identity "jdoe"

# Disable an account
> Disable-ADAccount -Identity "jdoe"

# remove a user account
> Remove-ADUser -Identity "jdoe" -Confirm:$false

```

# Groups

## Creating Groups

```powershell

# create a group
# > New-ADGroup -Name <group name> -SamAccountName <group name>
#   -GroupScoe <DomainLocal|Global|Universal> -Description <group description>
#   -GroupCategory <Security|Distribution>
> New-ADGroup -Name "group1" -SamAccountName "group1"
  -GroupScope "DomainLocal" -GroupCategory "Security"

```

## Getting Groups

```powershell

# get list of all groups
> Get-ADGroup -Filter *

# get list of all groups of universal Scope
> Get-ADGroup -Filter {GroupScope -eq "Universal"}

# get list of all groups of domain local scope
> Get-ADGroup -Filter {GroupScope -eq "DomainLocal"}

# get list of all groups of security type
> Get-ADGroup -Filter {GroupCategory -eq "Security"}

```

### Group Operations

```powershell

# Get the list of group members
# > Get-ADGroupMember -Identity <group name>
> Get-ADGroupMember -Identity "group1"

# find the groups the user belongs to
# > Get-ADUser -Identity <user name> -Properties MemberOf
> Get-ADUser -Identity "janedoe" -Properties MemberOf

# add a user to a group
> Add-ADGroupMember -Identity "group1" -Members "janedoe"

# remove a member from the group
> Remove-ADGroupMember -Identity "group1" -Members "janedoe"

# remove a group
> Remove-ADGroup -Identitiy "group1"

```

# Computers

```powershell

# get the list of all computers
> Get-ADComputer -Filter *

```

## Add A Rocky Linux to AD

- execute the following commands on Rocky linux

```bash

# install dependencies
> sudo dnf install realmd sssd oddjob oddjob-mkhomedir adcli
  samba-common-tools krb5-workstation

# check if the IP address is set to match the network id of DC (192.168.1.0)
> ip a

# set the ip address in the same network of DC
# ip address: 192.168.1.140
# subnet mask: 255.255.255.0
# dns address: 192.168.1.100
> sudo nmtui

# check the connectivity with domain controller
> ping 192.168.1.100

# discover the domain
> sudo relam discover sunbeam.local

# join the domain
> sudo realm join sunbeam.local

# reboot the machine
> sudo reboot

```

## Exercises

```bash

# create a new user named "Elon Musk" with login name as "emusk" under users of sunbeam.local. He is a CEO of Telsa. Set the password as "Elon*1234"

# create a new user named "Bill Gates" with login name as "bgates" under users of sunbeam.local. He is a CEO of microsoft. Set password as "Bill*1234"

# create a user named John Doe with password "John*1234"
# set the title of the user as Developer, Department as Development, address to Pune, phone number to +911234512345, email to john@test.com
# change the pasword to "john.doe@1234"
# enable and disable the account
# remove the account"


# Create two users named "Elsa" and "Ana"
# create a group named Frozen
# add both the users Elsa and Ana toA Frozen groupd

```
