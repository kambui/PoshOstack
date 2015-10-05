[DSCLocalConfigurationManager()]
configuration testConfig {
    node KAMBUI-NOTE {
        Settings {
            AllowModuleOverwrite = $true
            RefreshMode = 'push'
            ConfigurationMode = 'ApplyAndAutoCorrect'
        }
           
    }

}

testConfig -OutputPath C:\