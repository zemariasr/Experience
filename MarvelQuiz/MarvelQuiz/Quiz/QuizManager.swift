//
//  QuizManager.swift
//  MarvelQuiz
//
//  Created by José Maria Só Rodrigues on 13/11/2018.
//  Copyright © 2018 ZM FIGHTER SYSTEM. All rights reserved.
//

import Foundation

class QuizManager {
    
    private let quizes: [(question: String, correctAnswer: String, options: [String])] = [
        (question: "Qual personagem adora teias?", correctAnswer: "Spider",
         options: ["Hulk", "Faxineira", "Spider", "Gargamel"]),
        (question: "Garras de Adamantium?", correctAnswer: "Wolverine",
         options: ["Iron Man", "Hulk", "Thor", "Wolverine"]),
        (question: "Quem fica verde de raiva?", correctAnswer: "Hulk",
         options: ["Spider", "Green Arrow", "Lanterna Verde", "Hulk"]),
        (question: "Quem adora um martelo?", correctAnswer: "Thor",
         options: ["Jepeto", "Thor", "Iron Man", "Capitão America"]),
        (question: "Quem carrega um escudo?", correctAnswer: "Capitão América",
         options: ["Homem Formiga", "Capitão América", "Mercurio", "Viuva Negra"]),
        ]
    
    private var quiz: Quiz!
    private var _totalAnswers = 0
    private var _totalCorrectAnswers = 0
    
    var question: String {
        return quiz.question
    }
    var options: [String] {
        return quiz.options
    }
    var totalAnswers: Int {
        return _totalAnswers
    }
    var totalCorrectAnswers: Int {
        return _totalCorrectAnswers
    }
    
    func refreshQuiz() {
        let randomIndex = Int(arc4random_uniform(UInt32(quizes.count)))
        let quizData = quizes[randomIndex]
        quiz = Quiz(question: quizData.question, options: quizData.options, correctedAnswer: quizData.correctAnswer)
    }
    
    func validateAnswer(index: Int) {
        _totalAnswers += 1
        if quiz.validateOption(index) {
            _totalCorrectAnswers += 1
        }
    }
    
}
