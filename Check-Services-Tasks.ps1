# Check NinjaRMMAgent
$serviceName = 'NinjaRMMAgent'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
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
        Start-Service -Name '$serviceName'
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
        Start-Service -Name '$serviceName'
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
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check EFR
$serviceName = 'EFR'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check SX_Virtual_Link_Lite
$serviceName = 'SX Virtual Link Lite'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check ADSync
$serviceName = 'ADSync'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check AzureADConnectHealthSyncInsights
$serviceName = 'AzureADConnectHealthSyncInsights'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check AzureADConnectHealthSyncMonitor
$serviceName = 'AzureADConnectHealthSyncMonitor'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check Gdmms
$serviceName = 'Gdmms'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

# Check PostgreSQL 11.0-1 Server
$serviceName = 'PostgreSQL 11.0-1 Server'

If (Get-Service $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status

    if ( $status.Status -ne "Running") {
        Write-Output "Service $serviceName nor running"
        Start-Service -Name '$serviceName'
    } else {
        Write-Output "Service $serviceName is running nothig to do"
    }
} else {
    Write-Host Service $serviceName not found
}

############# Terminaldeinste werfen  Fehler wenn nicht der Starttype überpüft wird deswegen andere Behandlung

# Check UmRdpService
$serviceName = 'UmRdpService'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}

# Check TermServLicensing
$serviceName = 'TermServLicensing'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}

# Check TermService
$serviceName = 'TermService'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) { 
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}

#Check SessionEnv
$serviceName = 'SessionEnv'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}

# Check RemotApp und Desktopverbindungsverwaltung
$serviceName = 'TScPubRPC'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}

# Check RDMS
$serviceName = 'RDMS'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}

# Check Remotedesktop-Verbindungsbroker
$serviceName = 'Tssdis'

If (Get-Service -Name $serviceName -ErrorAction SilentlyContinue) {
    $status = Get-Service -Name $serviceName
    #Write-Output $status.Status
    #Write-Output $status.StartType

    if ( $status.StartType -notlike "Manual" ) {
        if ( $status.Status -ne "Running") {
            Write-Output "Service $serviceName not running"
            Start-Service -Name $serviceName
        } else {
            Write-Output "Service $serviceName is running nothig to do"
        }
    }
} else {
    Write-Host Service $serviceName not found
}
