BeforeAll {
    Import-Module -Name ./ICT_128_LAB_3.psm1
}
Describe 'Check-Q1' {
    It 'Basic Test' {
        $process = Get-Process
        $result = Q1 $process
        for ($i = 1; $i -lt $result.Count; $i++) {
            $result[$i].Id | Should -BeLessThan $result[$i - 1].Id   
        }
    }
}

Describe 'Check-Q2' {
    It 'Basic Test' {
        $process = Get-Process
        $result = Q2 $process
        for ($i = 0; $i -lt $result.Count; $i++) {
            $id = [bool] (Get-Member -inputobject $result[$i] -name "Id" -Membertype Properties)
            $id | Should -Be $true  
            $VM = [bool] (Get-Member -inputobject $result[$i] -name "VM" -Membertype Properties) 
            $VM | Should -Be $true  
            $name = [bool] (Get-Member -inputobject $result[$i] -name "Name" -Membertype Properties) 
            $name | Should -Be $false 
        }
    }
}

Describe 'Check-Q3' {
    It 'Basic Test' {
        $result = Q3 "foo" "oo"
        $result | Should -Be $true
    }

    It 'False' {
        $result = Q3 "foo" "iawudhiawud"
        $result | Should -Be $false
    }
}

Describe 'Check-Q4' {
    It 'Basic Test' {
        $result = Q4 "foo" "foo"
        $result | Should -Be $true
    }

    It 'False' {
        $result = Q4 "foo" "o"
        $result | Should -Be $false
    }
}

Describe 'Check-Q5' {
    It 'Basic Test' {
        $result = Q5 "abc"
        $result | Should -Be "abc".GetHashCode()
    }

    It 'Basic Test' {
        $result = Q5 "cba"
        $result | Should -Be "cba".GetHashCode()
    }
}

Describe 'Check-Q6' {
    It 'Basic Test' {
        $result = Q6 1, 3, 2, 5, 4
        $result | Should -Be 1, 2, 3, 4, 5
    }

    It 'Basic Test' {
        $result = Q6 10, 8, 6, 4, 2
        $result | Should -Be 2, 4, 6, 8, 10
    }
}



Describe 'Check-Q7' {
    It 'Basic Test' {
        $string = "abcDEF"
        $result = Q7 $string
        $result | Should -Be "ABCdef"
    }

    It 'Alternate' {
        $string = "FEDCBA"
        $result = Q7 $string
        $result | Should -Be "FEDcba"
    }
}

Describe 'Check-Q8' {
    It 'Basic Test' {
        $result = Q8 "abcdef" 3
        $result | Should -Be "d"
    }

    It 'Basic Test' {
        $result = Q8 "abcdef" 9
        $result | Should -Be $false
    }
}
