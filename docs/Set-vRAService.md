# Set-vRAService

## SYNOPSIS
    
Set a vRA Service

## SYNTAX


## DESCRIPTION

Set a vRA Service

Currently unsupported interactive actions:

* HoursStartTime
* HoursEndTime
* ChangeWindowDayOfWeek
* ChangeWindowStartTime
* ChangeWindowEndTime

## PARAMETERS


### Id

The id of the service

* Required: true
* Position: named
* Default value: 
* Accept pipeline input: true (ByPropertyName)

### Name

The name of the service

* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

### Description

A description of the service

* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

### Status

The status of the service

* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

### Owner

The owner of the service

* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

### SupportTeam

The support team of the service

* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

### WhatIf


* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

### Confirm


* Required: false
* Position: named
* Default value: 
* Accept pipeline input: false

## INPUTS

System.String

## OUTPUTS

System.Management.Automation.PSObject

## EXAMPLES
```
-------------------------- EXAMPLE 1 --------------------------

C:\PS>Get-vRAService -Name "Default" | Set-vRAService -Owner user@vsphere.local







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Set-vRAService -Id 25c0f3db-5906-4d42-8633-7b05f695432c -Name "Default 1"







-------------------------- EXAMPLE 3 --------------------------

C:\PS>Set-vRAService -Id 25c0f3db-5906-4d42-8633-7b05f695432c -Name "Default 1" -Description "updated from posh"







-------------------------- EXAMPLE 4 --------------------------

C:\PS>Set-vRAService -Id 25c0f3db-5906-4d42-8633-7b05f695432c -Name "Default 1" -Description "updated from posh" -Owner "user@vsphere.local"







-------------------------- EXAMPLE 5 --------------------------

C:\PS>Set-vRAService -Id 25c0f3db-5906-4d42-8633-7b05f695432c -Name "Default 1" -Description "updated from posh" -Owner "user@vsphere.local" -SupportTeam 
"support@vsphere.local"







-------------------------- EXAMPLE 6 --------------------------

C:\PS>Set-vRAService -Id 25c0f3db-5906-4d42-8633-7b05f695432c -Name "Default 1" -Description "updated from posh" -Owner "user@vsphere.local" -SupportTeam 
"support@vsphere.local" -Status INACTIVE
```
