# Get-vRAApplianceServiceStatus

## SYNOPSIS
    
Get information about vRA services

## SYNTAX


## DESCRIPTION

Get information about vRA services. These are the same services that you will see via the service tab

## PARAMETERS


### Name

The name of the service to query

* Required: false
* Position: 1
* Default value: 
* Accept pipeline input: false

### Limit

The number of entries returned per page from the API. This has a default value of 100.

* Required: false
* Position: 2
* Default value: 100
* Accept pipeline input: false

## INPUTS

System.String

## OUTPUTS

System.Management.Automation.PSObject

## EXAMPLES
```
-------------------------- EXAMPLE 1 --------------------------

C:\PS>Get-vRAApplianceServiceStatus







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Get-vRAApplianceServiceStatus -Limit 9999







-------------------------- EXAMPLE 3 --------------------------

C:\PS>Get-vRAApplianceServiceStatus -Name iaas-service
```
