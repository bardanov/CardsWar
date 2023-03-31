//
//  ContentView.swift
//  Cards Game
//
//  Created by Serezha on 26.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card4"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .ignoresSafeArea()
            VStack {
                Spacer()
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
//                Image("button")
                Button(action: {
                    deal()
                }, label: {
                        Image("button")
                })
                    .padding(.bottom, 26.0)
                
//                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 5.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    .fontWeight(.bold)
                    Spacer()
                    VStack {
                        Text("CPU")
                            .padding(.bottom, 10.0)
                            .font(.headline )
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    .fontWeight(.bold)
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                Spacer()
            }
        }
    }
    
    func deal() {
//        Randomize the player's cards
//        Randomize the cpu's cards
//        Update the score
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        
        if playerCardValue > cpuCardValue {
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
