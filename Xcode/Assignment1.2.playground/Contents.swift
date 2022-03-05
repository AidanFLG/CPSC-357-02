import UIKit

//function tells you hold long to wait for one time to reach the next
func waitingTime(firstHour: Int, firstMinute: Int, secondHour: Int, secondMinute: Int) -> String{
    //change able holders for the input variables
    var fh = firstHour
    var fm = firstMinute
    let sh = secondHour
    let sm = secondMinute
    
    //holder for the waited minutes and hours
    var minutesWaited = 0
    var hoursWaited = 0
    //final stinf holder for what will be returned
    var fin: String
    
    //for function to increase the first time until it reachs the second time, incrementing the waited time., and first time
    while((sh != fh) && (sm != fm)){
        fm += 1
        minutesWaited += 1
        
        if(fm >= 60){
            fm = fm % 60
            fh += 1
            hoursWaited += 1
        }
    }
    
    //returns the final string
    fin = ("You should wait \(hoursWaited):\(minutesWaited)")
    return fin
}

waitingTime(firstHour: 11, firstMinute: 30, secondHour: 13, secondMinute: 15)
