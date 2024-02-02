//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by ธนพงษ์ แจ้งสว่าง on 22/1/2567 BE.
//

import SwiftUI

struct FruitNutrientsView: View {
 
    var fruit: Fruit
    
    let nutrients:[String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional valuw per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength:  25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
