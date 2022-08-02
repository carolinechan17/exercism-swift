func timeToPrepare(drinks: [String]) -> Double {
    var totalTime : Double = 0
    
    //MARK: using for in iteration to count the amount of time needed to prepare orders
    for drink in drinks{
        switch drink {
        case "beer", "water", "soda":
            totalTime += 0.5
        case "shot":
            totalTime += 1.0
        case "mixed drink":
            totalTime += 1.5
        case "fancy drink":
            totalTime += 2.5
        case "frozen drink":
            totalTime += 3.0
        default:
            totalTime += 0.0
        }
    }
    return totalTime
}

func makeWedges(needed: Int, limes: [String]) -> Int {
    var totalWedges : Int = 0
    var totalLimes : Int = 0
    
    //MARK: condition if the lime needed is 0
    if(needed == 0){
        return 0
    }
    
    //MARK: using for in iteration to count the amount of wedges
    for lime in limes{
        totalLimes += 1
        
        if(lime == "small"){
            totalWedges += 6
        } else if(lime == "medium"){
            totalWedges += 8
        } else{
            totalWedges += 10
        }
        
        if(totalWedges >= needed){
            break;
        }
    }
    return totalLimes
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
    var timeLeft: Double = Double(minutesLeft)
    var count : Int = 0
    
    //MARK: using for iteration to iterate through 2D array of Strings
    for order in remainingOrders {
        if(timeLeft > 0){
            timeLeft -= timeToPrepare(drinks: order)
            count += 1
        }
    }
    return Array(remainingOrders.dropFirst(count))
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
    beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
    //MARK: Variables for beer
    var countBeer : Int = 0
    var firstBeer : String = ""
    var lastBeer : String = ""
    
    //MARK: Variables for soda
    var countSoda : Int = 0
    var firstSoda : String = ""
    var lastSoda : String = ""
    
    for order in orders {
        if order.drink == "beer" {
            if(countBeer == 0){
                firstBeer = order.time
            }
            lastBeer = order.time
            countBeer += 1
        }else if order.drink == "soda" {
            if(countSoda == 0){
                firstSoda = order.time
            }
            lastSoda = order.time
            countSoda += 1
        }
    }
    if(countSoda == 0 && countBeer == 0){
        return (beer: nil, soda: nil)
    }else if(countBeer == 0 && countSoda > 0){
        return (beer: nil, soda: (firstSoda, lastSoda, countSoda))
    }else if(countBeer > 0 && countSoda == 0){
        return (beer: (firstBeer, lastBeer, countBeer), soda: nil)
    }else{
        return (beer: (firstBeer, lastBeer, countBeer), soda: (firstSoda, lastSoda, countSoda))
    }
}
