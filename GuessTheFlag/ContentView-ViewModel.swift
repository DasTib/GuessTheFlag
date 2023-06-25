//
//  ContentView-ViewModel.swift
//  GuessTheFlag
//
//  Created by Joseph Ollis on 4/21/23.
//

import Foundation


extension ContentView {
    @MainActor class ViewModel: ObservableObject {
        @Published var scoreValue = 0
        @Published var showingScore = false
        @Published var scoreTitle = ""
        @Published var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
        @Published var correctAnswer = Int.random(in: 0...2)
        
        func flagTapped (_ number: Int) {
            if number == correctAnswer {
                scoreTitle = "Correct"
                scoreValue += 1
            } else {
                scoreTitle  = "Wrong"
            }
            showingScore = true
        
        
    }
        func askQuestion() {
            countries.shuffle()
            correctAnswer = Int.random(in: 0...2)
        }
    
        
    }
}
