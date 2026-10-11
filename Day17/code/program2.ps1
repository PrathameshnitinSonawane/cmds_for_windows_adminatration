# Variable declaration

# implicit variable declaration
# - variable data type will be decided by powershell

$name = "user1"
$age  = 40
$address = "pune"
$salary = 15.50

# print the values on console
Write-Host "name = $name, age = $age, address = $address, salary = $salary"


# explicit variable declaration

[string]$phone = "+9134232243243"
[int]$zipcode = 411041

Write-Host "phone number = $phone, zipcode = $zipcode"


# read only variables
Set-Variable -Name "PI" -Value 3.14 -Option ReadOnly
Write-Host "PI = $PI"

# change the value of PI : not possible as PI is readonly
# $PI = 3.50
# Write-Host "PI = $PI"

# constant declaration
New-Variable -Name "ConstVar" -Value 1000 -Option Constant
Write-Host "ConstVar = $ConstVar"







