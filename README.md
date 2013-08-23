Powertab is an extension of the PowerShell tab expansion feature.

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

# Intentions
This repository is an unofficial fork of [the original project][1], which has gone stale for many years. The community has been unable to submit bug fixes, patches, or even wiki edits. There are a few equally stale forks on Codeplex. This project intends to reverse that. Let's unlock the potential of the community! I will release the "last" version, which I directly cloned from Codeplex, as version `1.0.0`. Follow the contributing guide and the issues list as path forward.


 [1]: http://powertab.codeplex.com
 [2]: http://powertab.codeplex.com/wikipage?title=Installing%20PowerTab&referringTitle=Documentation
