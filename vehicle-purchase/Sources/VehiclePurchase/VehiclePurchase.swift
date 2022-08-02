func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthlyPayment : Double = price/12.0
    let percent : Double = monthlyBudget / monthlyPayment * 100.0;
    if(monthlyBudget > monthlyPayment){
        return "Yes! I'm getting a \(vehicle)"
    }else if(percent >= 10){
        return "I'll have to be frugal if I want a \(vehicle)"
    }else{
        return "Darn! No \(vehicle) for me"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    switch wheels {
    case 2,3:
        return "You will need a motorcycle license for your vehicle"
    case 4,6:
        return "You will need an automobile license for your vehicle"
    case 18:
        return "You will need a commercial trucking license for your vehicle"
    default:
        return "We do not issue licenses for those types of vehicles"
    }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    if(yearsOld >= 10){
        return 25
    }else{
        if(msrp >= 25000){
            return msrp * (10 - yearsOld) / 1000
        }else{
            return 25000 * (10 - yearsOld) / 1000
        }
    }
}
