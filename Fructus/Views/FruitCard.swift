//
//  FruitCard.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 28/07/2022.
//

import SwiftUI

struct FruitCard: View {
    
    @State var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        VStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 4)
                .frame(minWidth: 100, idealWidth: 100, maxWidth: 300, minHeight: 100, idealHeight: 100, maxHeight: 300, alignment: .center)
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Text(fruit.title)
                .font(.system(size: 32))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 4)
                .padding(.bottom, 5)
                .scaleEffect(isAnimating ? 1 : 0.7)
            
            Text(fruit.headline)
                .font(.system(size: 16))
                .foregroundColor(.white)
                .fontWeight(.light)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
                .padding(.bottom)
                .scaleEffect(isAnimating ? 1 : 0.7)
            
            ViewButton()
            .opacity(isAnimating ? 1 : 0)
            .offset(y: isAnimating ? 0 : 40)

        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 740, alignment: .center)
        .background(.linearGradient(Gradient(colors: [fruit.gradientColors[0], fruit.gradientColors[1]]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .padding(.vertical, 20)
        .padding(.horizontal, 10)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard(fruit: FruitData[1])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
