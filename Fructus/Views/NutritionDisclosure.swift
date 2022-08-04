//
//  NutritionDisclosure.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 03/08/2022.
//

import SwiftUI

struct NutritionDisclosure: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamens","Minerals"]
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional Value per 100g"){
                ForEach(0..<nutrients.count) { item in
                    Divider()
                        .padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
            
        }
    }
}

struct NutritionDisclosure_Previews: PreviewProvider {
    static var previews: some View {
        NutritionDisclosure(fruit: FruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
