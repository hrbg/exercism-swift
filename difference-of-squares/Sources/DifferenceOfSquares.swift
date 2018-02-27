struct Squares {
    let squareOfSums: Int
    let sumOfSquares: Int
    let differenceOfSquares: Int

    init(_ lastNumber: Int) {
        let firstNNumbers = Array(0...lastNumber)
        let sum           = firstNNumbers.reduce(0, +)
        self.squareOfSums        = sum * sum
        self.sumOfSquares        = firstNNumbers.map({ $0 * $0}).reduce(0, +)
        self.differenceOfSquares = self.squareOfSums - self.sumOfSquares
    }
}
