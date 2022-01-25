BeforeAll {
    Import-Module -Name ./ICT_128_LAB_2.psm1
}

Describe 'Check-Q1' {
    It 'Basic Test' {
        $result = Q1
        $result | Should -Be "hello"
    }
}

Describe 'Check-Q2' {
    It 'Basic Test' {
        $result = Q2 2
        $result | Should -Be 4
    }

    It 'Test 1' {
        $result = Q2 1
        $result | Should -Be 1
    }

    It 'Test large' {
        $result = Q2 333
        $result | Should -Be 110889
    }
}

Describe 'Check-Q3' {
    It 'Basic Test' {
        $result = Q3 "hello" "world"
        $result | Should -Be "hello world"
    }

    It 'Empty Second Parameter' {
        $result = Q3 "hello" ""
        $result | Should -Be "hello "
    }

    It 'Empty First Parameter' {
        $result = Q3 "" "world"
        $result | Should -Be " world"
    }
}

Describe 'Check-Q4' {
    It 'Basic Test' {
        $result = Q4 help
        $helphelp = Get-Help help
        $result.details.name | Should -Be "Get-Help"
    }
}

Describe 'Check-Q5' {
    It 'Basic Test' {
        $processID = Start-Job -ScriptBlock { Start-Sleep 5 }
        $result = Q5 $processID.Id
        $result.Id | Should -Be $processID.Id
    }
}

Describe 'Check-Q6' {
    It 'Basic Test' {
        $random = Get-Random
        Q6 "." $random 
        Test-Path -Path ".\$($random)" 
        Remove-Item $random       
    }
}

Describe 'Check-Q7' {
    It 'Basic Test' {
        $processID = Start-Job -ScriptBlock { Start-Sleep 4 }
        $processID.State | Should -Be "Running"
        Q7 $processID.Id
        $processID.State | Should -Be "Stopped"
    }
}

Describe 'Check-Q8' {
    It 'Basic Test' {
        $result = Q8 1, 2, 3, 4, 5
        $result | Should -Be '"1 2 3 4 5"'
    }

    It 'Basic Test' {
        $result = Q8 "a", "b", "c"
        $result | Should -Be '"a b c"'
    }
}

Describe 'Check-Q9' {
    It 'Basic Test' {
        $result = Q9 "a", "b", "c", "d" 
        $result | Should -Be "d"
    }

    It 'Basic Test' {
        $result = Q9 1, 3, 2, 4 
        $result | Should -Be 4
    }
}

Describe 'Check-Q10' {
    It 'Basic Test' {
        $correct = "A", "B", "C", "D" 
        $result = Q10 "a", "b", "c", "d"
        For (($i = 0); ($i -lt $correct.Count); $i++ ) {
            $result[$i] | Should -Be $correct[$i]
        }
    }

    It 'Basic Test' {
        $correct = "C", "A", "D", "M" 
        $result = Q10 "c", "A", "D", "M"
        For (($i = 0); ($i -lt $correct.Count); $i++ ) {
            $result[$i] | Should -Be $correct[$i]
        }
    }
}