import Foundation

func dailyRateFrom(hourlyRate: Int) -> Double {
    return 8.0 * Double(hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    return round(Double(hourlyRate) * 8.0 * 22.0 * (100.0 - discount) / 100.0)
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    return floor(budget / (Double(hourlyRate) * 8.0 * (100.0 - discount) / 100.0))
}
