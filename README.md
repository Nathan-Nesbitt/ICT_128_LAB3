# Answers

Please only modify `ICT_128_LAB_3.psm1`. Do not change the function names or the filename, for example if the demo code
looks like the following:

```ps
function Q1 {

}
```

Your solution should only be **between** the brackets. 

# Testing

We are going to be using pester in this lab. You can install it by running `Install-Module Pester -Force` then `Import-Module Pester -PassThru`

To tests your answers simply run `./ICT_128_LAB_3.Tests.ps1`.

# Questions

1. Create a function that takes a list of processes, and sorts the processes by the PID descending.
2. Create a function that returns only the ID and VM properties from the processes.
3. Create a function that takes in two strings and checks if the first string contains the second string.
    This function should return a boolean.
4. Create a function that checks to see if two strings are equivalent. This function should return a boolean.
5. Create a function that takes a string and returns the hash code of the string.
6. Create a function that takes in an array of integers, sorts the integers, then returns the sorted array.
7. Create a function that takes in a string, splits the string in half, converts the first half of the string 
    to uppercase and the second half of the string to lowercase. Then finally return the formatted string.
8. Create a function that takes in a string and a number, if the string is longer than the number, return
    the character in the number's position. If the string is shorter than the number, return false.
9. Create a function that takes in a number, and writes the number to the host. Return nothing from this function.