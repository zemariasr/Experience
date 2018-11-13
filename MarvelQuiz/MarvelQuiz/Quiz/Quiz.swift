//
//  Quiz.swift
//  MarvelQuiz
//
//  Created by José Maria Só Rodrigues on 13/11/2018.
//  Copyright © 2018 ZM FIGHTER SYSTEM. All rights reserved.
//

import Foundation

class Quiz {
    
    let question: String
    let options: [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == correctedAnswer
        
    }
    
    deinit {
        print("Liberou da memoria")
    }
}
