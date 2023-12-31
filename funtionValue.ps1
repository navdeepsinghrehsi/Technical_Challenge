

function Get-Value {
    param (
        [Parameter(Mandatory=$true)]
        [Hashtable]$Object,
        
        [Parameter(Mandatory=$true)]
        [string]$Key
    )

    $keys = $Key -split '/'
    $value = $Object

    try {
        foreach ($k in $keys) {
            $value = $value.$k
        }
        return $value
    }
    catch {
        return $null
    }
}

<# Example usage
$object1 = @{
    "a" = @{
        "b" = @{
            "c" = "d"
        }
    }
}
$key1 = "a/b/c"
$result1 = Get-ValueFromNestedObject -Object $object1 -Key $key1
Write-Output $result1  # Output: d

$object2 = @{
    "x" = @{
        "y" = @{
            "z" = "a"
        }
    }
}
$key2 = "x/y/z"
$result2 = Get-ValueFromNestedObject -Object $object2 -Key $key2
Write-Output $result2  # Output: a

#>

