func dailyRateFrom(hourlyRate: Int) -> Double {
    let dailyRateMultiplier = 8
    return Double(hourlyRate * dailyRateMultiplier)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double ) -> Double { 
    let monthlyBillableDays: Int = 22
    let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * Double(monthlyBillableDays)
    let monthlyRateWithDiscount =  monthlyRate - (monthlyRate * (discount / 100))
    return monthlyRateWithDiscount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let monthlyBillableDays: Int = 22
    let monthlyRateFrom = monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount)
    let totalNumberOfDays = (budget / monthlyRateFrom) * Double(monthlyBillableDays)
    return totalNumberOfDays.rounded(.down)
}
