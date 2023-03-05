<#
.SYNOPSIS
Use this script tp search for local admin access on machines in a domain or local network.

.DESCRIPTION
This function simply runs a WMI command against the sepcified list of computers. Since, by-default, 
we need local administrative access on a computer to run WMI commands, a success for this fucntions 
means local administrative access.

.PARAMETER ComputerFile
File containing list of target computers.

.PARAMETER StopOnSuccess
Stop on first success. 

.EXAMPLE
Find-WMILocalAdminAccess -ComputerFile C:\test\computers.txt -Verbose
#>

Write-Host ""
Write-Host "############################"
Write-Host "# " -NoNewline;
Write-Host "Find-WMILocalAdminAccess" -ForegroundColor Yellow -NoNewline;
Write-Host " #"
Write-Host "############################"
Write-Host ""

Write-Host "Targets:" -ForegroundColor Yellow -NoNewline;
Write-Host " Leave blank for " -NoNewline;
Write-Host "All" -ForegroundColor Yellow -NoNewline;
Write-Host " or provide the " -NoNewline;
Write-Host "File-Path" -ForegroundColor Yellow -NoNewline;
Write-Host " containing list of computers or " -NoNewline;
Write-Host "-ComputerName Server01" -ForegroundColor Yellow
$TargetsPath = Read-Host

Write-Host "Username:" -ForegroundColor Yellow -NoNewline;
Write-Host " (Leave blank for Current User)"
$Username = Read-Host

if($Username){
	Write-Host "Password: "  -ForegroundColor Yellow -NoNewline;
	$Password = Read-Host

	$SecPassword = ConvertTo-SecureString $Password -AsPlainText -Force

	$cred = New-Object System.Management.Automation.PSCredential($Username,$SecPassword)

	function Find-WMILocalAdminAccess 
	{
		[CmdletBinding()] Param(

			[Parameter (Mandatory=$False, Position = 0, ValueFromPipeline=$true)]
			[String]
			$ComputerName,

			[Parameter (Mandatory=$False, Position = 1, ValueFromPipeline=$true)]
			[String]
			$ComputerFile,

			[Parameter ()]
			[Switch]
			$StopOnSucess
		)
		$ErrorActionPreference = "SilentlyContinue"
		#read word list (consider pipeline for performance)
		if ($Computerfile)
		{
			$Computers = Get-Content $Computerfile
		}
		elseif ($ComputerName)
		{
			$Computers = $ComputerName
		}
		else
		{
			# Get a list of all the computers in the domain
			$objSearcher = New-Object System.DirectoryServices.DirectorySearcher
			$objSearcher.SearchRoot = New-Object System.DirectoryServices.DirectoryEntry
			$objSearcher.Filter = "(&(sAMAccountType=805306369))"
			$Computers = $objSearcher.FindAll() | %{$_.properties.dnshostname}

		}
		
		Write-Host ""
		Write-Host "The current user has Local Admin access on:" -ForegroundColor Yellow
		
		foreach ($Computer in $Computers)
		{
			Write-Verbose "Trying $Computer"
		
			#clear error listing
			$Error.clear()
		
			#run the test
			Get-WmiObject -Class Win32_OperatingSystem -ComputerName $Computer -ErrorAction SilentlyContinue -Credential $cred > $null
		
			#put the first error into a variable (best practice)
			$ourerror = $error[0]
		
			# if there is no error, then we were successfull, else, was it a username or password error? if it wasn't username/password incorrect, something else is wrong so break the look
			if ($ourerror -eq $null) 
			{
				"$Computer"
				if ($StopOnSucess)
				{
					break
				}
			} 
			
			else 
			{
				Write-Debug "$($ourerror.Exception.Message)"
			}
		}
		
	}
	
	if($TargetsPath.Contains("-ComputerName")){
		$TargetsPath2 = $TargetsPath.Replace("-ComputerName ","")
		Find-WMILocalAdminAccess -ComputerName $TargetsPath2
	}
	
	elseif($TargetsPath){
		Find-WMILocalAdminAccess -ComputerFile $TargetsPath
	}
	
	else{
		Find-WMILocalAdminAccess
	}
	
}

else{
	function Find-WMILocalAdminAccess 
	{
		[CmdletBinding()] Param(

			[Parameter (Mandatory=$False, Position = 0, ValueFromPipeline=$true)]
			[String]
			$ComputerName,

			[Parameter (Mandatory=$False, Position = 1, ValueFromPipeline=$true)]
			[String]
			$ComputerFile,

			[Parameter ()]
			[Switch]
			$StopOnSucess
		)
		$ErrorActionPreference = "SilentlyContinue"
		#read word list (consider pipeline for performance)
		if ($Computerfile)
		{
			$Computers = Get-Content $Computerfile
		}
		elseif ($ComputerName)
		{
			$Computers = $ComputerName
		}
		else
		{
			# Get a list of all the computers in the domain
			$objSearcher = New-Object System.DirectoryServices.DirectorySearcher
			$objSearcher.SearchRoot = New-Object System.DirectoryServices.DirectoryEntry
			$objSearcher.Filter = "(&(sAMAccountType=805306369))"
			$Computers = $objSearcher.FindAll() | %{$_.properties.dnshostname}

		}
		
		Write-Host ""
		Write-Host "The current user has Local Admin access on:" -ForegroundColor Yellow
		
		foreach ($Computer in $Computers)
		{
			Write-Verbose "Trying $Computer"
		
			#clear error listing
			$Error.clear()
		
			#run the test
			Get-WmiObject -Class Win32_OperatingSystem -ComputerName $Computer -ErrorAction SilentlyContinue > $null
		
			#put the first error into a variable (best practice)
			$ourerror = $error[0]
		
			# if there is no error, then we were successfull, else, was it a username or password error? if it wasn't username/password incorrect, something else is wrong so break the look
			if ($ourerror -eq $null) 
			{
				"$Computer"
				if ($StopOnSucess)
				{
					break
				}
			} 
			
			else 
			{
				Write-Debug "$($ourerror.Exception.Message)"
			}
		}
		
	}
	
	if($TargetsPath.Contains("-ComputerName")){
		$TargetsPath2 = $TargetsPath.Replace("-ComputerName ","")
		Find-WMILocalAdminAccess -ComputerName $TargetsPath2
	}
	
	elseif($TargetsPath){
		Find-WMILocalAdminAccess -ComputerFile $TargetsPath
	}
	
	else{
		Find-WMILocalAdminAccess
	}

}

Write-Host ""