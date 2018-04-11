[![Build status](https://ci.appveyor.com/api/projects/status/l5q1xwec0htdufp9/branch/master?svg=true)](https://ci.appveyor.com/project/VertigoRay/onedrivedsc/branch/master)
[![codecov](https://codecov.io/gh/UNT-CAS/OneDriveDsc/branch/master/graph/badge.svg)](https://codecov.io/gh/UNT-CAS/OneDriveDsc)

Various DSC settings for the OneDrive sync client, especially for configuring settings specific to enterprise functionality in the client.

Can apply ~both~ computer ~and user~ policies with this resource.

# Detailed Usage

[See the wiki ...](https://github.com/UNT-CAS/OneDriveDsc/wiki)

# Installation

```powershell
Install-Module -Name 'OneDriveDsc'
```

# Quick Example

```powershell
configuration Demo_Configuration {
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'OneDriveDsc'

    Node localhost {
        OneDrive All_Present {
            AllowTenantList = @('UNT CAS')
            AutomaticUploadBandwidthPercentage = 50
            BlockTenantList = @(
                'Test Tenant',
                'Foo Bar',
                'Hello World',
                'Bar Baz'
            )
            DehydrateSyncedTeamSites = 'Present'
            DiskSpaceCheckThresholdMB = @{
                '0a4530c2-d071-48d8-a692-156365d9369d' = 10240
            }
            FilesOnDemandEnabled = 'Present'
            PreventNetworkTrafficPreUserSignIn = 'Present'
            RemoteAccess32 = 'Present'
            RemoteAccess64 = 'Present'
            SilentAccountConfig = 'Present'
        }
    }
}
```

**Note**: This is the [*All Present* Example](https://github.com/UNT-CAS/OneDriveDsc/blob/master/Examples/All_1Present_.ps1). All of the examples in the [Examples](https://github.com/UNT-CAS/OneDriveDsc/blob/master/Examples) folder are used as part of our [Pester](https://github.com/pester/Pester) [tests](https://github.com/UNT-CAS/OneDriveDsc/blob/master/Tests); so they all *should* work.