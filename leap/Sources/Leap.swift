struct Year {
    let calendarYear: Int
    lazy var isLeapYear: Bool = {
        return calendarYear % 400 == 0 || (calendarYear % 4 == 0 && calendarYear % 100 != 0)
    }()
}
