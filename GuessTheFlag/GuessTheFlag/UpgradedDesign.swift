//
//  UpgradedDesign.swift
//  GuessTheFlag
//
//  Created by Brandon Johns on 11/21/23.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle.bold())
            .foregroundStyle(.white)
    }
}

extension View {
    func title() -> some View {
        modifier(TitleModifier())
    }
}
struct FlagImage: View {
    let name: String
    
    var body: some View {
        Image(name)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

struct UpgradedDesign: View {
    static let allCountries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"]
    
    @State private var countries = allCountries.shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var scoringTitle = ""
    @State private var showingScore = false
    @State private var showingResults = false
    @State private var score = 0
    @State private var questionCounter = 1
    
    @State private var selectedFlag = -1
   
    
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
                    .title()
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
                            FlagImage(name: countries[number])
                                .rotation3DEffect(.degrees(selectedFlag == number ? 360 : 0), axis: (x: 0, y: 1, z: 0))
                                .opacity(selectedFlag == -1 || selectedFlag == number ? 1.0 : 0.25)
                                .scaleEffect(selectedFlag == -1 || selectedFlag == number ? 1.0 : 0.25)
                                .animation(.default, value: selectedFlag)
                                
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
            .alert("Game Over", isPresented: $showingResults) {
                Button("New Game", action: newGame)
            } message: {
                Text("Your final score was \(score)")
            
            }

            .padding()
           
        }
    }
    
    func flagTapped(_ number: Int ) {
            if number == correctAnswer {
                scoringTitle = "Correct"
                score += 1
                selectedFlag = number
            }
        else {
                let theirAnswer = (countries[number])
                let needsThe = ["UK", "US"]
                if needsThe.contains(theirAnswer)
                {
                    scoringTitle = "Wrong, thats the flag of the \(theirAnswer) "
                } else {
                    scoringTitle = "Wrong, thats the flag of \(theirAnswer) "
                }
                if score > 0 {
                    score -= 1
                }
            }
        if questionCounter == 8 {
            showingResults = true
        } else {
            showingScore = true
        }
    }
    func askQuestion() {
        countries.remove(at: correctAnswer)
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        questionCounter += 1
        selectedFlag = -1
    }
    func newGame() {
        questionCounter = 0
        score = 0
        countries = Self.allCountries
        askQuestion()
    }
}

#Preview {
    UpgradedDesign()
}
