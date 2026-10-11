#array 
$array = 1,2,3,4,5,6,7,8,9
write-host "array = $array"
   
$arr1="john" ,"alice"
write-host "aara1 = $arr1"

#empty array
$arr2 = @()
write-host "arr2 = $arr3"

#mixed array
$arr3 = @("john" , 10.15,$true)
write-host "arr3=$arr3"
 
#explicit array declaration
[int[]]$numbers = 10,20,30,40
write-host "arr4=$numbers"

#Range operattor
$arr5 = 1..10
write "$arr5"


#get the array from an output of a command
#$arr7=Get-Process
#write-host "$arr7"



#array operations

#acces by the index
$numbers = @(10,20,30,40,50)
#read the value by the index
write-host "numbers[0] = " $numbers[0]
#reading from -ve index
write-host "number[-1] = " $numbers[-1]

#slicing the values from the array
write-host "numbers [1..3]=" $numbers[1..3]

#count of values
write-host "lenght of the numbers = " $numbers.count
write-host "lenght of the numbers = " $numbers.length


