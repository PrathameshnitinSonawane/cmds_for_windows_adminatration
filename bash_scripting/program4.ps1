#array iteration

#for loop
$countries = @('india','usa','japan')
for ($index = 0; $index -lt $countries.count; $index++){
    write-host "country = " $countries[$index]
} 

#for each loop
foreach ($country in $countries){
    write-host "countries = " $country
}
