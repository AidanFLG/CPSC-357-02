import UIKit

//checks to see if a string has its prenethses in the right order and right amount
func verifyParenth(expression: String) -> Bool{
    //count for number of prentheses facing right
    var count = 0
    
    //increments though every char in given string
    for char in expression{
        //count increments up and down for ( and )
        if(char == "("){
            count += 1
        }
        if (char == ")"){
            count -= 1
        }
        //if a ) is put before a ( it will return false
        if count < 0{
            return false
        }
    }
    
    //if there is an even amount of ( and ) then return true, if not return false
    if(count == 0){
        return true
    }else{
        return false
    }
        
}

verifyParenth(expression: ")(")
