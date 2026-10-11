# array iteration 

# array decleration
$countries = @("india", "usa", "uk", "japan", "bhutan")
Write-Host "countries = $countries"

# traditional for loop
for ($index = 0; $index -lt $countries.Count; $index++) {
    Write-Host "country =" $countries[$index]
}
Write-Host "-"

# foreach loop
foreach ($country in $countries) {
    Write-Host "country =" $country
}