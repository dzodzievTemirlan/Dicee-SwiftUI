//
//  ContentView.swift
//  Dicee
//
//  Created by Temirlan Dzodziev on 22.02.2020.
//  Copyright © 2020 Temirlan Dzodziev. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack{            Image("background").resizable().edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                
                Spacer()
                
                HStack {
                    diceView(n: leftDiceNumber)
                    diceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                
                Spacer()

                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1 ... 6)
                    self.rightDiceNumber = Int.random(in: 1 ... 6)
                }) {
                    Text("Roll")
                        .font(.system(size:50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            
            }
        }
    }
}
 
struct diceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)").resizable()
            .aspectRatio(1, contentMode: .fit)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}


