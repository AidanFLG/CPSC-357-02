import UIKit

//function checks if a number is prime
func isPrime(_ num: Int) -> Bool{
    //for function to check if the number is 0 or 1
    if(num == 0 || num == 1){
        return true
    }
    //if a number times its self smaller than num is equal to num then it is not prime
    for i in 0 ... (num - 1){
        if(i*i == num){
            return false
        }
    }
    //if the if function is never called then the number is prime
    return true
}
