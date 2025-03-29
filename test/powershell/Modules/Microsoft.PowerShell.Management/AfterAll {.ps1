$ADSTestFile = "exampleFile.txt"
$ADSTestDir = "exampleDir"

AfterAll {
    if (Test-Path TestDrive:\$ADSTestFile) {
        Remove-Item -Path TestDrive:\$ADSTestFile -Force
    }
    if (Test-Path TestDrive:\$ADSTestDir) {
        Remove-Item -Path TestDrive:\$ADSTestDir -Recurse -Force
    }
}
