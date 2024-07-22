# Dump drivers to a file.  
# Use the -thirdparty switch to filter out Microsoft drivers.
param (
    [string]$OutputFilePath = ".\third_party_drivers.txt",
    [switch]$ThirdParty
)

Write-Host "Script started."


if ($ThirdParty) {
    Write-Host "Gathering third party Windows drivers...this will take a few minutes."
    $drivers = Get-WindowsDriver -Online -All | Where-Object { $_.ProviderName -notin "Microsoft", "Microsoft Corporation", "MSFT" }

} else {
    Write-Host "Gathering all Windows drivers...this will take a few minutes."
    $drivers = Get-WindowsDriver -Online -All
}

Write-Host "Driver query complete."

if ($drivers.Count -gt 0) {
    Write-Host "Found $($drivers.Count) drivers."
    $drivers | ForEach-Object {
        Write-Host "Driver: $($_.Driver) `tVersion: $($_.Version) `tClass: $($_.ClassName) `tProvider: $($_.ProviderName)"
    }
    $drivers | Out-File -FilePath $OutputFilePath
    Write-Host "Drivers saved to $OutputFilePath"
} else {
    if ($ThirdParty) {
        Write-Host "No third-party drivers found."
    } else {Write-Host "No drivers found."}
}

Write-Host "Script finished."


    