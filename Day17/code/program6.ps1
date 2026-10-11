# functions

# function declaration
function function1 {
    Write-Host "inside function1"
}

# function call
# function1


# function with parameters
function function2 {
    param (
        [int]$p1, [int]$p2
    )

    $result = $p1 + $p2
    Write-Host "result = $result"
}

# function call
function2 -p1 10 -p2 40







