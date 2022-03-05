import UIKit

//checks to see if a strings paranthesis are right
func verifyParenthesis(expression: String) -> Bool{
    //count for the number of open parenthesis
    var count = 0
    
    for char in expression{
        //increments the number of open parenthesis
        if(char == "("){
            count += 1
        }
        if(char == ")"){
            count -= 1
        }
        //if a ) comes before a ( it is false
        if(count < 0){
            return false
        }
    }
    
    //if there is an even amount of ( and ) then returns true
    if(count == 0){
        return true
    }else{
        return false
    }
}

verifyParenthesis(expression: "()")
