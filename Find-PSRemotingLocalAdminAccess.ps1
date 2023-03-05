<#
.SYNOPSIS
Use this script to search for local admin access on machines in a domain or local network.
#>

Write-Host ""
Write-Host "###################################"
Write-Host "# " -NoNewline;
Write-Host "Find-PSRemotingLocalAdminAccess" -ForegroundColor Yellow -NoNewline;
Write-Host " #"
Write-Host "###################################"
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

	function Find-PSRemotingLocalAdminAccess 
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
		
			#clear error listing
			$Error.clear()
			
			Write-Host ""
			Write-Host "The user has Local Admin access on:" -ForegroundColor Yellow
		
			#run the test
			Write-Verbose 'Trying to run a command parallely on provided computers list using PSRemoting .'
			Invoke-Command -ScriptBlock {hostname} -ComputerName $Computers -ErrorAction SilentlyContinue -Credential $cred
		
			#put the first error into a variable (best practice)
			$ourerror = $error[0]
		
			# if there is no error, then we were successfull, else, was it a username or password error? if it wasn't username/password incorrect, something else is wrong so break the look
			if ($ourerror -eq $null) 
			{
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
	
	if($TargetsPath.Contains("-ComputerName")){
		$TargetsPath2 = $TargetsPath.Replace("-ComputerName ","")
		Find-PSRemotingLocalAdminAccess -ComputerName $TargetsPath2
	}
	
	elseif($TargetsPath){
		Find-PSRemotingLocalAdminAccess -ComputerFile $TargetsPath
	}
	
	else{
		Find-PSRemotingLocalAdminAccess
	}
}

else{
	function Find-PSRemotingLocalAdminAccess 
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
		
			#clear error listing
			$Error.clear()
			
			Write-Host ""
			Write-Host "The current user has Local Admin access on:" -ForegroundColor Yellow
		
			#run the test
			Write-Verbose 'Trying to run a command parallely on provided computers list using PSRemoting .'
			Invoke-Command -ScriptBlock {hostname} -ComputerName $Computers -ErrorAction SilentlyContinue
		
			#put the first error into a variable (best practice)
			$ourerror = $error[0]
		
			# if there is no error, then we were successfull, else, was it a username or password error? if it wasn't username/password incorrect, something else is wrong so break the look
			if ($ourerror -eq $null) 
			{
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
	
	if($TargetsPath.Contains("-ComputerName")){
		$TargetsPath2 = $TargetsPath.Replace("-ComputerName ","")
		Find-PSRemotingLocalAdminAccess -ComputerName $TargetsPath2
	}
	
	elseif($TargetsPath){
		Find-PSRemotingLocalAdminAccess -ComputerFile $TargetsPath
	}
	
	else{
		Find-PSRemotingLocalAdminAccess
	}
}

Write-Host ""