struct SumOfMultiples {
    static func toLimit(_ limitNumber: Int, inMultiples: [Int]) -> Int {
        var i = 1
        var multiples: [Int] = []
        while i < limitNumber {
            for multiple in inMultiples {
                let number = multiple * i
                if number < (limitNumber) && multiples.index(of: number) == nil {
                    multiples.append(number)
                }
            }
            i += 1
        }
        return multiples.reduce(0, +)
    }
}
