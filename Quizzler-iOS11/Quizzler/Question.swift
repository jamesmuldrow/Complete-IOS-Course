//
//  Question.swift
//  Quizzler
//
//  Created by James Muldrow on 3/3/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    let questionText : String
    let answer : Bool
    
    init() {
        questionText = ""
        answer = false
    }
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
