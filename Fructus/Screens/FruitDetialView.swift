//
//  FruitDetialView.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 01/08/2022.
//

import SwiftUI

struct FruitDetialView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeader(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        //Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        //Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrition
                        NutritionDisclosure(fruit: fruit)
                        //SubHeadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                           .multilineTextAlignment(.leading)
                        
                        //Link
                        LinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 30)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetialView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetialView(fruit: FruitData[0])
    }
}
