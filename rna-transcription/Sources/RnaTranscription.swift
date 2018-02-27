struct RnaTranscription {
    enum TranscriptionError : String, Error {
        case invalidNucleotide = "This didn't work"
    }
}

struct Nucleotide {
    private let dnaSecuence: String
    private let dnaComplement: [Character: Character] = [
        "G": "C",
        "C": "G",
        "T": "A",
        "A": "U",
        ]
    
    init(_ dnaSecuence: String) {
        self.dnaSecuence = dnaSecuence
    }
    
    func complementOfDNA() throws ->  String {
        do {
            return try String(dnaSecuence.map(transcribe))
        }
    }
    
    private func transcribe(_ neucleotide: Character) throws -> Character {
        guard let rna = self.dnaComplement[neucleotide] else {
            throw RnaTranscription.TranscriptionError.invalidNucleotide
        }
        return rna
    }
}
