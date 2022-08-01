//
//  ListItem.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 01/08/2022.
//

import SwiftUI

struct ListItem: View {
    var fruit: Fruit
    var body: some View {
        HStack{
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 2)
                .frame(width: 80, height: 80, alignment: .center)
                .background(
                    LinearGradient(colors: fruit.gradientColors, startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
            })
            }
        }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(fruit: FruitData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
