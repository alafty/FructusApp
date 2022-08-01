//
//  FruitHeader.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 01/08/2022.
//

import SwiftUI

struct FruitHeader: View {
    var fruit: Fruit
    @State var isAnimating: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 5)
                .padding()
                .scaleEffect(isAnimating ? 1 : 0.6)
        }
        .frame(height: 440)
        .onAppear {
            withAnimation(.easeOut(duration: 0.3)){
                isAnimating = true
            }
        }
    }
}

struct FruitHeader_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeader(fruit: FruitData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
