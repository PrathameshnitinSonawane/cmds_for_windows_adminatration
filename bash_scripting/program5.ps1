#functions

#function declaration
function function1{
    write-host "inside the sunction"
}

#function call
function1

#function with the parameters
function function2{
    param(
        [int]$p1,[int]$p2
    )
    $result =$p1+$p2
    write-host "result = $result"
}

function2 -p1 10 -p2 40