# Array
# - collection of similar or dissimilar values

# basic syntax
$array1 = 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
Write-Host "array1 = $array1"

# basic syntax
$array2 = "john", "alice", "bob", "steve", "bill", "elis"
Write-Host "array2 = $array2"

# empty array
$array3 = @()
Write-Host "array3 = $array3"

# mixed array
$array4 = @("john", 10, 15.50, $true)
Write-Host "array4 = $array4"

# explicit array declcaration
[int[]]$array5 = 10, 20, 30, 40, 50
Write-Host "array5 = $array5"

# array with range of values
$array6 = 1..10
Write-Host "array6 = $array6"

# get the array from an output of a commands
$array7 = Get-Process
Write-Host "array7 = $array7"