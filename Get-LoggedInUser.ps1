Function Get-LoggedInUser {
<#
.SYNOPSIS
    This will check the specified machine to see all users who are logged on.
    For updated help and examples refer to -Online version.
 
.NOTES
    Name: Get-LoggedInUser
    Author: Paul Contreras
    Version: 3.0
    DateUpdated: 2021-Sep-21
 
.LINK
    https://thesysadminchannel.com/get-logged-in-users-using-powershell/ -
    For updated help and examples refer to -Online version.
 
.PARAMETER ComputerName
    Specify a computername to see which users are logged into it.  If no computers are specified, it will default to the local computer.
 
.PARAMETER UserName
    If the specified username is found logged into a machine, it will display it in the output.
 
.EXAMPLE
    Get-LoggedInUser -ComputerName Server01
    Display all the users that are logged in server01
 
.EXAMPLE
    Get-LoggedInUser -ComputerName Server01, Server02 -UserName jsmith
    Display if the user, jsmith, is logged into server01 and/or server02
 
 
#>
 
    [CmdletBinding()]
        param(
            [Parameter(
                Mandatory = $false,
                ValueFromPipeline = $true,
                ValueFromPipelineByPropertyName = $true,
                Position=0
            )]
            [string[]] $ComputerName = $env:COMPUTERNAME,
 
 
            [Parameter(
                Mandatory = $false
            )]
            [Alias("SamAccountName")]
            [string]   $UserName
        )
 
    BEGIN {}
 
    PROCESS {
        foreach ($Computer in $ComputerName) {
            try {
                $Computer = $Computer.ToUpper()
                $SessionList = quser /Server:$Computer 2>$null
                if ($SessionList) {
                    $UserInfo = foreach ($Session in ($SessionList | select -Skip 1)) {
                        $Session = $Session.ToString().trim() -replace '\s+', ' ' -replace '>', ''
                        if ($Session.Split(' ')[3] -eq 'Active') {
                            [PSCustomObject]@{
                                ComputerName = $Computer
                                UserName     = $session.Split(' ')[0]
                                SessionName  = $session.Split(' ')[1]
                                SessionID    = $Session.Split(' ')[2]
                                SessionState = $Session.Split(' ')[3]
                                IdleTime     = $Session.Split(' ')[4]
                                LogonTime    = $session.Split(' ')[5, 6, 7] -as [string] -as [datetime]
                            }
                        } else {
                            [PSCustomObject]@{
                                ComputerName = $Computer
                                UserName     = $session.Split(' ')[0]
                                SessionName  = $null
                                SessionID    = $Session.Split(' ')[1]
                                SessionState = 'Disconnected'
                                IdleTime     = $Session.Split(' ')[3]
                                LogonTime    = $session.Split(' ')[4, 5, 6] -as [string] -as [datetime]
                            }
                        }
                    }
 
                    if ($PSBoundParameters.ContainsKey('Username')) {
                        $UserInfo | Where-Object {$_.UserName -eq $UserName}
                      } else {
                        $UserInfo | Sort-Object LogonTime
                    }
                }
            } catch {
                Write-Error $_.Exception.Message
 
            }
        }
    }
 
    END {}
}