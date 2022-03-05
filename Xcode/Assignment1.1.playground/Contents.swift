import UIKit

//checks if a number is prime and returns a Bool
func isPrime(_ num: Int) -> Bool{
    //checks to see if the number is 1 or 0
    if(num == 1 || num == 0){
        return true
    }
    //increments though every number from 0 up to the given number
    for i in 0 ... (num - 1) {
        //if a number times its self equals the given number then the given number is not prime
        if (i*i == num) {
            return false
        }
    }
    //if the if function is never called then the given number is prime
    return true
}

isPrime(4)
