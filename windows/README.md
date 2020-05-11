These largely depend on WSL1/2 configured first



# nuget installation
 Install-Package Nuget                                                                                                

# reloading environment variables

 $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")                          

# Use Scoop
for everything
https://spin.atomicobject.com/2018/06/18/windows-node-js/
