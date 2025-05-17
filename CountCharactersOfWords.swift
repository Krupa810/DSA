//
//  CountCharactersOfWords.swift
//  
//
//  Created by Krupali Patel on 5/17/25.
//

import Foundation

func countCharacters(_ words: [String], _ chars: String) -> Int {
    /*
     - Store char and count in a map
     - interate words
     - if word char are in chars
     - add word to result
     - end interation
     - return total count of word in result
     */
    
    var result = String()
    var charDict = [Character: Int]()
    
    for char in chars {
        charDict[char, default: 0] += 1
    }
    
    for word in words {
        let charOfwords = Array(word)
        var charDictCopy = charDict
        var wordCharsExist = true
        for char in charOfwords {
            if var count = charDictCopy[char], count > 0 {
                count = count - 1
                charDictCopy[char] = count
            } else {
                wordCharsExist = false
                break
            }
        }
        if wordCharsExist {
            result.append(word)
        }
    }
    return result.count
}
