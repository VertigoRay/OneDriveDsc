configuration Demo_Configuration {
    Import-DscResource -ModuleName 'PSDesiredStateConfiguration'
    Import-DscResource -ModuleName 'OneDriveDsc'

    Node localhost {
        OneDrive DiskSpaceCheckThresholdMB_z0 {
            DiskSpaceCheckThresholdMB = @{}
        }
    }
}
