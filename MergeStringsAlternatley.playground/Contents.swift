import UIKit

//Input: word1 = "abc", word2 = "pqr"
//Output: "apbqcr"
//Explanation: The merged string will be merged as so:
//word1:  a   b   c
//word2:    p   q   r
//merged: a p b q c r

// Time Complexity: O(maxLen)

class MeregeStringAlternatley {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var mergedString = ""
            
            let maxLength = max(word1.count, word2.count)
            
            for i in 0..<maxLength {
                if i < word1.count {
                    mergedString.append(word1[word1.index(word1.startIndex, offsetBy: i)])
                }
                
                if i < word2.count {
                    mergedString.append(word2[word2.index(word2.startIndex, offsetBy: i)])
                }
            }
            
            return mergedString
    }
}

let meregeStringAlternatley = MeregeStringAlternatley()
print(meregeStringAlternatley.mergeAlternately("ab", "pqrs"))
