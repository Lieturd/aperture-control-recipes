# Install or upgrade Scoop package manager

if (Get-Command scoop.cmd -ErrorAction SilentlyContinue) {
    Write-Output "Scoop already installed, upgrading instead."
    scoop.cmd update scoop
} else {
    Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
}
