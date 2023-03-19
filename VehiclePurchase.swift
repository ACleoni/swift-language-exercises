/*
    Computes whether or not you can afford the monthly payments on a given car
    If the monthly payment is within 10% above your monthly budget, a message
    to be more frugal will be returned.
*/
func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let term = 60.00;
    let monthlyPayment = price / term

    // find the difference between monthlyPayment and monthlyBudget
    // divide by total original budget and multiply by 100
    let percentage = ((monthlyPayment - monthlyBudget) / monthlyBudget) * 100.00;

    guard percentage <= 10 else {
        return "Darn! No \(vehicle) for me"
    }

    if (percentage <= 10 && percentage >= 1 ) {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Yes! I'm getting a \(vehicle)"
    }
}

print(canIBuy(vehicle: "1974 Ford Pinto", price: 516.32, monthlyBudget: 100.00))
// => "Yes! I'm getting a 1974 Ford Pinto"

print(canIBuy(vehicle: "2011 Bugatti Veyron", price: 2_250_880.00, monthlyBudget: 10000.00))
// => "Darn! No 2011 Bugatti Veyron for me"

print(canIBuy(vehicle: "2020 Indian FTR 1200", price: 12_500, monthlyBudget: 200))
// => "I'll have to be frugal if I want a 2020 Indian FTR 1200"


/*
    Takes in the number of wheels on your new vehicle and returns the type of license you will need
    2-3 wheels returns motorcycle license
    4-6 wheels returns automobile license
    18 wheels returns commercial license
    Any other number of wheels returns an error
*/
func licenseType(numberOfWheels: Int) -> String {
    let requiredLicense: String;

    switch numberOfWheels {
        case 2, 3:
            requiredLicense = "motorcycle"
        case 4, 6:
            requiredLicense = "automobile"
        case 18:
            requiredLicense = "commercial trucking"
        default:
            requiredLicense = ""
    }

    guard requiredLicense != "" else {
        return "We do not issue licenses for those types of vehicles"
    }

    return "You will need \(requiredLicense == "automobile" ? "an" : "a") \(requiredLicense) license for your vehicle"
}

print(licenseType(numberOfWheels: 2))
// => "You will need a motorcycle license for your vehicle"

print(licenseType(numberOfWheels: 6))
// => "You will need an automobile license for your vehicle"

print(licenseType(numberOfWheels: 18))
// => "You will need a commercial trucking license for your vehicle"

print(licenseType(numberOfWheels: 0))
// => "We do not issue licenses for those types of vehicles"


/*
    Takes in the price of the car and the car's age in years, and returns the registration fee for that car
*/
func registrationFee(msrp: Int, yearsOld: Int) -> Int { 
    var registrationFee = 25;

    guard yearsOld < 10 else {
        return registrationFee
    }

    let baseCost = msrp > 25_000 ? msrp : 25_000
    let basePercentage = Int(100.00 * 0.10);
    let percentageOff = Double(baseCost) * (Double(yearsOld) / Double(basePercentage))

    let discountedPrice = Double(baseCost) - percentageOff;

    registrationFee = Int(discountedPrice) / 100

    return registrationFee
}

print(registrationFee(msrp: 2_250_800, yearsOld: 9))
// => 2250

print(registrationFee(msrp: 25_000, yearsOld: 3))
// => 175

print(registrationFee(msrp: 34_000, yearsOld: 30))
// => 25
