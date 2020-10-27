﻿# IB Tool

## About
This tool is intended to easily help on managing Information Barriers in Microsoft Teams.  
*(10/27/2020 : Tool is still under construction)*

## Pre-requisites

 > This Module requires Powershell 5.1 and above.  
 > This Module will install the ExchangeOnline Management module (in order to have an SCC connection session).  

 ## Installation

 Opening a Windows Powershell with "Run as Administrator" you can just run:
``` powershell
Install-Module IBTool -Force
```
Once the module is installed, you can run:
``` powershell
Start-IBTool
```

If you want to check for module updates you can run:
``` powershell
Find-Module IBTool
```
If there is any newer version than the one you already have, you can run:
``` powershell
Update-Module IBTool -Force
```

## Version History  
[Change Log](/IBTool/changelog.md)