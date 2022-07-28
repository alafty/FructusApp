//
//  FruitCard.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 28/07/2022.
//

import SwiftUI

struct FruitCard: View {
    
    @State var isAnimating: Bool = false
    
    var body: some View {
        VStack {
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 4)
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Text("Blueberries")
                .font(.system(size: 32))
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 2, y: 4)
                .padding(.bottom, 5)
                .scaleEffect(isAnimating ? 1 : 0.7)
            
            Text("Blueberries are a very beneficial and popular all around the world")
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
        .frame(minWidth: 0, maxWidth: 360, minHeight: 0, maxHeight: 740, alignment: .center)
        .background(.linearGradient(Gradient(colors: [Color("ColorBerryDark"), Color("ColorBerryLight")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
    }
}

struct FruitCard_Previews: PreviewProvider {
    static var previews: some View {
        FruitCard()
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
