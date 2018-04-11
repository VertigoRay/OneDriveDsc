configuration Demo_Configuration {
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'OneDriveDsc'

    Node localhost {
        OneDrive All_Absent {
            AllowTenantList = @()
            AutomaticUploadBandwidthPercentage = 0
            BlockTenantList = @()
            DehydrateSyncedTeamSites = 'Absent'
            DiskSpaceCheckThresholdMB = @{}
            FilesOnDemandEnabled = 'Absent'
            PreventNetworkTrafficPreUserSignIn = 'Absent'
            RemoteAccess32 = 'Absent'
            RemoteAccess64 = 'Absent'
            SilentAccountConfig = 'Absent'
        }
    }
}
