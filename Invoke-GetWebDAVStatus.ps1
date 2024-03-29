function Invoke-GetWebDAVStatus{
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [String]
        $Command
    )
    $a=New-Object IO.MemoryStream(,[Convert]::FromBAsE64String("H4sIAAAAAAAEAO1YbWwcRxl+d/d8dpzk4o8kdpqvzaUpTmyffbbTxGk+7NiOc+DETs5xmsZVsrc3Pm+yt3vZ3XNsqkQu0NIKtTQSRSIVqvoDoUCRSlWVtFBaaFGlSkGt6J+itCoIAYWKAr8QP1Kemd1bnx2XBH4i5m7fmfdj3nnmY9+Z2UP3PUEKEUXwfPop0VXyUw/dOs3iiW18OUYvLLm26ao0dG3T6KThqgXHzjlaXtU1y7I9NcNUp2iphqX2D6fVvJ1lieXLq+8MfIwMEA1JCl3qef9Sye+HFKelUjtRDZgqX/ZyG4haAtbjl2UfN0/RclCyX1To9EPCCfcT5mEmUg5+hwOX1ysW6eRpomXIHkkQ7byNMQmTGkIXqQr8wTI+4bFpD/lrK4J+1czhLnNxOuG4jk4BNmAUHa2bbwdxT8Jhpq37WDlm4avxJrv9C2E+1ebnB0WVCnp3E9ELy/jYydxFdKH9rdLa9gr6I3KJqJbWVsuPr74hLV/SUksOJIUm9LKadr4lTOWLfP62tDbcdRG6yI0oGou6tbDYMss1TZA210dqI6tv4C/VV9RWtKwkuTbScO/lpnqYVddGGu+rj5D8uNFwAuS+xpO1kRMNJ5bKlZcbHlsDEFtWb2z5tr0Stk3w2LyMPlhfHyXn7yGU2qi9mmsF88H2KreBNx+1Gzl/UZmPr5LjWyPwcU0TSPNdzbRNEgtqA51/ktZjaqS43LSW19+WcDFr0Vlee1sovFtxLkhUWGuvA7utvl2hQX+6MEZfhUJxHgNtWs87GFWvLiXiAxFdWrmsqmUVOS9xk6YNIWhqjmFsZS7cKPhttD/9+f0SnwHy18NUV6I90dnemezmkgoyQbMAv/ki0dvIu/ASbU57jmHlXG4RwcK9DkCbj6Xpw2p/aW4ePJbqR/5X8G/A9eb9pp0J5hym0vHt8rol0NE/pU5aLeZfLGsleCqDpQuMtMJfH2KJluflZUV4NmW/F1H6jXRWidJhmdNVUreygr6mcPke6S9yFIg4/Y6g22VOJUHvEHRUyLdKQ6hbKegjQmJLs6C/U94EHaGHOT5R/ph4K/cQLw8KelXQ5ginx0X5c8LysvymXE0/oLWwbxUeXlGeRvmKzOkNUa6GJe+DJnoiiV8NvSpfU3pFWdlUQ1+ChnMRupvup+cxgA30IqhEr4has3RJPUNvgB/hg0rfpI/kt2A9uolzDze2oJ0Kul9wlxo7lLfBGfN0juC+jDl5F9xswFUDSdSfKIHtNTEDjRFevqxwulWU/6wsoRZFwhLl3taAVtNW0BpKCtotaK+gKUGPCHpCUA10FRmifE7QGUG/Jbz9kN6Gr2Uod9FLtCmyi35Gv6cheof+oRyh96g2ci9domdokj4S9h/RL7EqVgr7v9EzskMPCvk79KLyMOj7yjcEfUp4foYStBReElRPvwVdS5KUoM1UDdpMG0E7Bb1H0D4h/wJtAU0LyUlBdayzBJ2lHKhLnqTTA/RT7FrP0R30OD0vJ/BO9YA/w+dwloJ3r5SuKXP7FE/fRf/FezZP9muR87i7BdG4Gc/20o6xe2/3qVPJU+20+5BmWHszAeNLk+XSJKUGrGKeOVrGZKeTNOKwrKFrHi/36p5hWygMGa6HLGV5nR3cCxzY2aLJ9tJxzfAOa3mWHTEKrJfyrm47ppGBkU7pGddj+USfbZpMeHITg8xijqFTjnmnDjHX1XKM5pqnPtjYyM1C6JMX6LhjeGzIsNicT4fRiOa4vE6+YJjMEa6BO9vrITBlih6jwaJRxvWzTDGX4+3MyVB5zHCNebJe12X5jDkzaniLih0ty/Kac3ZONao56NABHGHYebtcUapzAADHmONiDG5WotMTRq4I7Iuq+5mrO0ZhvtLvtKhxlJnatCi5N1cecTBPurdYo4UZx8hNLqrKFzRrZk5xtGh5Rp4JuWdkDNPwyrSDzDvOMv29Y2lP84pugk2HsxRUTARdx25B/qZBB2xnQNMn+RRqWB0mnWWOxczOjkTWNLEGxXkwcEMuXyzadD/LOYwNT5TqGG6e+DoOW2MTwTqjgWmdiREL2hPQHcO1Q2MspnPUN6k5lNA9m1ORBdp+Q8tZtusZuruwL3gHmGMX0syZMnR2k7q0GkO9v+qAAW8MWKyUsM7opMO0LFSJUc0969LAuaJmuuGYDIseuAsHmL8keD9pOHMGvSUX9U3mr0BKFzA3oYMh2y4cZW7R9GjU5q8wWaPAOFz06IBhZVNWlk1Tr+NofnCZ/eQk3YvNRKUBcvCz8ewCNyLKUwjHWWLgPYRnh3Ioe+AmoUOAoybQreBtsoTNpLDVwefx0yDNgjfhxYImgXKKJkALZd65LgdZnoqw9MAXkC9s06UWSLitDm0xQKVBzml5mypkDD4Y6mqoyUIMHDHNPnpzhzkg3pQbgvEbLsIhg6TUvA9MEw3wJnl3dcT7z+6yGko8eJwRfA4P19KSVpwGPNSVKsZpHEe0cbRgCOjj1I99cgz2RzEVfcjTwHsUkhQ4XIYGTyL2814ch3UGMt6ij9UfAEcMry4wGMEw6WJ4p4TMnzKafe8kTQtHxyDQ4Ko09jaoI7rLO6qGgEoQSy4eoHa6IIbHRQddMeL5sFGG3F8XfJiLqDHnc641fxKyyJmoZaHkrzMtgHs73XSEfyuYRDqS7bAufE/ue/qimn/2oXf+QBFVkqoUFcONQm0tZ2OcyLHKyqqqVXUDUkyukutSEWz+sYpVdUdAVVla17i8RpKr1m8gLtpASjWqkVQVi6rS+th6ZUWNJPHKXH+O61XitY9JsfoaSam94Evrily0gSpVWY7Vzj5YUanEZJwNlRhSBck+lWLrqn70xfGxNV0fPirJSrRuWTQqgPAMHmEix5ZUAOD6GD94Ab4cq5KCO+QGflAclVcfd7TCYdsKAyJijn3elWBXKY4cKyVasTDAUIVQNUhUF24T6s+vqGpHe0eScCymO3d2d7cnt+9ItnbtmMi0dnV07mjtZtkdrVnW3rG9O9l5d1eSXy3RShI3CfyIUhLdkTg8MBpuky3BtrAHt43tABtbGar6DbdgajN876/jddRQo8I2Eh6WfvHm608E9wmch3A3xp37tfLLOs2/u/N0NN2f/v7Er3aMzTanXn7y+utfkd0kd9i3a/yYC0TjR+3MKYTxvGZl7fF++7xl2lrWHV8wSq15bD23JTzVb3uHmbdQPG5nzoyL3WGhJlHIZujrbXOQr5Q+ZSySnmor5wDcGZhmYlsUZzHGxI4q0qdbSO1Z3Mt/nWQxvsA2yz8djPhfU8qSf6vcuYicpwXC0H7yM+yvY6E/0UM0pMxphnCqJ4SjNJ0C5ZExjcg4TIfBp0AP+F9r6JXIJzfmbo1zPvcFXIQWnsKJ+oVsTOwBBxBMeIhKIaRMICjxdKeoNSq2FwtByBTbjCHCoZ+eizzLL7vAxKO+H45u9vSIsGkPf10IcHhlcFfg49EX7Cil/cdP8TJdQbQ/g95qwq6UDmJ2pLC9fhFSdYGjMA/noNhY/cDqB/e02HI9hFHeXjuiypyfMRFs3bL6SWzo7eHD210J+5TAy235dmKWofv37SUgnxZ2B6kOfoZQzgkPvLcF9JP3IIdVwr+H3SxT6QoelTqApQPY+BcOaZ4ff8ayYnvic3s2HFW+hjn24cCfEWAv9d36j/vQI+bAP0RloeM7b/k83Wrsu8TYz6+/cAYWjv9OUacXFq7oI99c+YnjVvU+7iP6U9lL8MmPX929bzpvqlNBqI4jnMdVZuk2P7fuiR8bPdC6M666HoKlZtoW2xOfYW58397l1curd2vBjUKFC8vdEy861i5Xn8TtCZHS0B3btSe8Vt3O79LcfGIqGVcRdI0J5npj5e3BmaqGzlJZhqO2NzMPE//FVQubxJ74oZneAs7BurgTJbRCId7me/CcouulrAn7NvF0+C2jpsv0Iq6gMwEPicPOFYETd1THmMKBP8fc2/TaGQ+9lPtB1NaLHPEQm2KmanK6J665KWvKxuUorhaNXh0XCjQwgVsCCzolnLQtgqYEvW0e9t1t4SCA391WGtS9dPtJ9b8R/mTfrQz/n/4X078AU/a+6wAaAAA="))
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
    $PrivateMethod = [GetWebDAVStatus.Program].GetMethod('Main')

    if($PrivateMethod){
      $PrivateMethod.Invoke($Null,@(,$passed))
      }
    else{
      $PrivateMethod = [GetWebDAVStatus.Program].GetMethod('Main')
      $PrivateMethod.Invoke($Null,@(,$passed))
      }
     [Console]::SetOut($OldConsoleOut)
    $Results = $StringWriter.ToString()
    $Results
}
