# Get-vRAEntitledCatalogItem

## SYNOPSIS
    
Get the a catalog item that the user is entitled to see

## SYNTAX


## DESCRIPTION

API for administrators to interact with catalog items that they are entitled to. Consumer Entitled CatalogItem(s) are basically catalog items:
- in an active state.
- the current user has the right to consume.
- the current user is entitled to consume.
- associated to a service.

## PARAMETERS


### Id


* Required: true
* Position: named
* Default value: 
* Accept pipeline input: false

### Name

The name of the catalog item

* Required: true
* Position: named
* Default value: 
* Accept pipeline input: false

### Limit

The number of entries returned per page from the API. This has a default value of 100.

* Required: false
* Position: named
* Default value: 100
* Accept pipeline input: false

## INPUTS

System.String

## OUTPUTS

System.Management.Automation.PSObject

## EXAMPLES
```
-------------------------- EXAMPLE 1 --------------------------

C:\PS>Get-vRAEntitledCatalogItem







-------------------------- EXAMPLE 2 --------------------------

C:\PS>Get-vRAEntitledCatalogItem -Limit 9999







-------------------------- EXAMPLE 3 --------------------------

C:\PS>Get-vRAEntitledCatalogItem -Id dab4e578-57c5-4a30-b3b7-2a5cefa52e9e







-------------------------- EXAMPLE 4 --------------------------

C:\PS>Get-vRAEntitledCatalogItem -Name Centos_Template
```
