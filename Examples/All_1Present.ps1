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
