# array operations

$numbers = @(10, 20, 30, 40, 50)
Write-Host "numbers = $numbers"

# read the values by positive index
Write-Host "numbers[0] = " $numbers[0]
Write-Host "numbers[1] = " $numbers[1]

# read the values by negative index
Write-Host "numbers[-1] = " $numbers[-1]
Write-Host "numbers[-2] = " $numbers[-2]


# slicing the values from an array
Write-Host "numbers[1..3] =" $numbers[1..3]

# get the count of values 
Write-Host "length of numbers = " $numbers.Count
Write-Host "length of numbers = " $numbers.Length

