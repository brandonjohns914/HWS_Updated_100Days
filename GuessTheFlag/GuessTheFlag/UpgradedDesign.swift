//
//  UpgradedDesign.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/21/23.
//

import SwiftUI

struct UpgradedDesign: View {
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoringTitle = ""
    @State private var score = 0
    @State private var over8QuestionsTitle = ""
    @State private var questions = 0
    @State private var showingOver8Questions = false
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
            .ignoresSafeArea()
            VStack {
                Spacer()
                Text("Guess the flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                           
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                            
                    }
                    ForEach(0..<3) { number in
                        
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.capsule)
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                Spacer()
                Spacer()
                Text("Score: \(score)")
                    .font(.title.bold())
                Spacer()
            }
            .padding()
            .alert(scoringTitle, isPresented: $showingScore) {
                Button("Continue", action: askQuestion)
            } message: {
                Text("Your score is \(score)")
            }

            .padding()
        }
    }
    
    func flagTapped(_ number: Int ) {
        
        if questions <= 8 {
            questions += 1
            if number == correctAnswer {
                scoringTitle = "Correct"
                score += 1
            } else {
                scoringTitle = "Wrong, thats \(countries[number])"
                score -= 1
            }
        } else {
            scoringTitle = "Your Final score is \(score)"
        }
        score = 0
        questions = 0
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
   
}

#Preview {
    UpgradedDesign()
}
