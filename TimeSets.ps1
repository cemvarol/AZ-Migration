Set-Item WSMan:\localhost\Client\TrustedHosts -Value '*' -force

Invoke-Command -ComputerName Student01 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }


Invoke-Command -ComputerName Student02 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }
                
Invoke-Command -ComputerName Student03 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student04 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student05 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }


Invoke-Command -ComputerName Student06 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }
                
Invoke-Command -ComputerName Student07 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student08 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student09 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }


Invoke-Command -ComputerName Student10 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }
                
Invoke-Command -ComputerName Student11 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student12 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }
Invoke-Command -ComputerName Student13 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student14 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student15 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }

Invoke-Command -ComputerName Student16 `
`
      -ScriptBlock { 
                    Set-Service W32Time -StartupType Automatic
                    w32tm /config /syncfromflags:manual /manualpeerlist:"time.windows.com"
                    w32tm /config /reliable:yes
                    net start w32time
                    w32tm /resync /nowait

                    exit
                   }
