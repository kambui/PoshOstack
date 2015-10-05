configuration CreateFileWithMyName {
    Node $env:COMPUTERNAME {
         File AviksFile.txt {
            DestinationPath = 'C:\AviksFile.txt'
            Force = $true
            Contents = 'Hi This File is Created by DSC Automatically'
         }
    }
}

CreateFileWithMyName -OutputPath C:\