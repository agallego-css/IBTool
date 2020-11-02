﻿Function Get-OrgSegments {
    <#
    .SYNOPSIS
    This function gets the current Organization Segments in the tenant.
    
    .DESCRIPTION
    This function gets the current Organization Segments in the tenant.
    
    .EXAMPLE
    PS C:\> Get-OrgSegments
    This function gets the current Organization Segments in the tenant.
    #>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseSingularNouns", "")]
    [CmdletBinding()]
    Param(
        # Parameters
    )
    Write-PSFHostColor -String "[$((Get-Date).ToString("HH:mm:ss"))] Getting current Organization Segments."
    $statusBar.Text = "Running..."
    $array = New-Object System.Collections.ArrayList
    $array.AddRange( (Get-OrganizationSegment | Select-Object Name,UserGroupFilter,CreatedBy,WhenCreated) )
    $statusBar.Text = "Ready. Segments found: $($array.count)"
    return $array
}