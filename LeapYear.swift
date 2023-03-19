class Year {
    let calendarYear:  Int;
    var isLeapYear: Bool {
        guard calendarYear % 4 == 0 else {
            return false
        }
        if calendarYear % 100 == 0 {
            return calendarYear % 400 == 0
        }
        return true  
    }
    
    init(calendarYear: Int) {
      self.calendarYear = calendarYear;                        
    }
}

let vanillaLeapYear = Year(calendarYear: 1996)
print(vanillaLeapYear.isLeapYear)
// => true

let notALeapYear = Year(calendarYear: 1997)
print(notALeapYear.isLeapYear)
// => false

let centuryIsNotALeapYear = Year(calendarYear: 1900)
print(centuryIsNotALeapYear.isLeapYear)
// => false

let centuryIsALeapYear = Year(calendarYear: 2000)
print(centuryIsALeapYear.isLeapYear)
// => true
