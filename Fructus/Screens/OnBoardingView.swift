//
//  ContentView.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 28/07/2022.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
        TabView {
            ForEach(FruitData){ item in
                FruitCard(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
