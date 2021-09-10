/*
~~~~~~~~~~ Prompt: ~~~~~~~~~~
Use a loop to iterate through the numbers 1 through 16.

Push each number into fb, but push the string "fizz" in place of numbers divisible by 3, 
"buzz" in place of numbers divisible by 5, 
and "fizzbuzz" in place of numbers divisible by both 3 and 5.

Log fb to the console to see the output.

Hint: Check out the remainder/modulo operator: %.
~~~~~~~~~~ ~~~~~~~~~~ ~~~~~~~~~~
*/

// Solution
const fizzbuzz = (value1, value2) => {
    let fb = new Array();
    for (let i = 1; i < 17; i++) {
        fb[i - 1] = ((i % value1  ? '' : 'fizz') + (i % value2 ? '' : 'buzz') || i);
    }
    return fb;
}

// Console logs
console.log(fizzbuzz(3,5));