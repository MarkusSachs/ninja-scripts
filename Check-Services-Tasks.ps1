# Check NinjaRMMAgent
$serviceName = 'NinjaRMMAgent'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -DisplayName '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
} 

# Check CheckmkServic
$serviceName = 'CheckmkService'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -DisplayName '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
} 


# Check eMOEVEWebService
$serviceName = 'eMOEVEWebService'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -DisplayName '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
} 

# Check TesteMOEVEWebService
$serviceName = 'TesteMOEVEWebService'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -DisplayName '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}


