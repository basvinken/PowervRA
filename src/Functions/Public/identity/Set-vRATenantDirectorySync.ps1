﻿function Set-vRATenantDirectorySync {
<#
    .SYNOPSIS
    Sync an identity store
    
    .DESCRIPTION
    Sync an identity store
    
    .PARAMETER Id
    Specify the ID of a Tenant

    .PARAMETER Domain
    Specify the Domain of a Tenant Directory

    .INPUTS
    System.String

    .OUTPUTS
    System.Management.Automation.PSObject.
    
    .EXAMPLE
    Set-vRATenantDirectorySync -Id Tenant01 -Domain vrademo.local

    .EXAMPLE
    Set-vRATenantDirectorySync -Id Tenant01 -Domain vrademo.local,test.local
#>
[CmdletBinding()][OutputType('System.Management.Automation.PSObject')]

    Param (

    [parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [String]$Id,    
    
    [parameter(Mandatory=$false)]
    [ValidateNotNullOrEmpty()]
    [String[]]$Domain
    )

    # --- Test for vRA API version
    xRequires -Version 7.0
                
try {
        
    foreach ($TenantDomain in $Domain){

        $URI = "/identity/api/tenants/$($Id)/directories/$($TenantDomain)/sync "

        # --- Run vRA REST Request
        Invoke-vRARestMethod -Method POST -URI $URI
        
        Get-vRATenantDirectoryStatus -Id $Id -Domain $Domain
		
    }
}
catch [Exception]{

    throw
}
}