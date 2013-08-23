Powertab is an extension of the PowerShell tab expansion feature. This repository is an unofficial fork of [the original project][1], which has gone stale for many years.

# Installation
Refer to the [original instructions][2] for full details. Start by downloading one of the release packages. Unblock and unzip the archive (preferably to one of your module paths). Run the following from a PowerShell session

```powershell
> Import-Module .\path\to\PowerTab.psm1
```

or 

```powershell
> Import-Module PowerTab
```

or add the same to your PowerShell profile.


# Usage
Refer to [the original documentation][2] for full details. Run the following in your PowerShell session for built-in help files.

```powershell
Get-Help about_PowerTab
```

For developers, run this command to see what functionality the PowerTab module provides.

```powershell
Get-Command -module PowerTab
```



 [1]: http://powertab.codeplex.com
 [2]: http://powertab.codeplex.com/wikipage?title=Installing%20PowerTab&referringTitle=Documentation
