import Foundation
struct Bob {
    static func hey(_ input: String) -> String {
        let trimInput = input.trimmingCharacters(in: .whitespaces)
        switch trimInput {
        case _ where trimInput.isEmpty:
            return "Fine. Be that way!"
        case _ where isYelling(trimInput):
            return "Whoa, chill out!"
        case _ where trimInput.hasSuffix("?"):
            return "Sure."
        default:
            return "Whatever."
        }
    }
    
    private static func isYelling(_ input: String) -> Bool {
        return input.uppercased() == input && (input.rangeOfCharacter(from: CharacterSet.letters)) != nil
    }
}
