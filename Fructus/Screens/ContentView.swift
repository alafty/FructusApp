//
//  ContentView.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 01/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("isOnboarding") var isOnBoarding: Bool = false
    
    var body: some View {
            NavigationView{
                List(){
                    ForEach(FruitData.shuffled()){ fruit in
                        NavigationLink(destination: FruitDetialView(fruit: fruit)){
                            ListItem(fruit: fruit)
                                .padding(.vertical, 5)
                        }
                    }
                    Button {
                        isOnBoarding = true
                    } label: {
                        Text("Return to Previous Screen")
                            .foregroundColor(.secondary)
                            .fontWeight(.light)
                    }
                }
                .navigationTitle("Fructus")

            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
