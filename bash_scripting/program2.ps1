#explicit variable declaration
[string]$phone = "+9184656262"
[int]$zipcode = 461213

wrinte-host "phone number is = $phone , zipcode is = $zipcode"

#read only variables
Set-Variable -Name "PI" -value 3.14 -Option ReadOnly
wrinte-host "PI = $PI"

#constant variable declaration
New-Variable -Name "constvar" -Value 1000 -Option Constant
write-host "Constvar = $constvar"
