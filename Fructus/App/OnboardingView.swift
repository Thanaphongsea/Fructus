//
//  OnboardingView.swift
//  Fructus
//
//  Created by ธนพงษ์ แจ้งสว่าง on 13/1/2567 BE.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) {item in
               FruitCardView(fruit: item)
            }
        } 
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
