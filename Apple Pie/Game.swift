//
//  Game.swift
//  Apple Pie
//
//  Created by Noud on 09-11-18.
//  Copyright © 2018 Noud. All rights reserved.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    
    // MARK: activates when the user presses a letter and updates the guessed letters list and the amount of moves remaining
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.characters.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    
    // MARK: variable which represents the current word with or without guessed letters
    var formattedWord: String {
        var guessedWord = ""
        for letter in word.characters {
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
}
