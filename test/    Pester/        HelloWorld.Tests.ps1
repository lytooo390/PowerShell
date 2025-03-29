Describe 'HelloWorld Module Tests' {
    It 'should return Hello, World!' {
        $result = HelloWorld
        $result | Should -Be 'Hello, World!'
    }
}