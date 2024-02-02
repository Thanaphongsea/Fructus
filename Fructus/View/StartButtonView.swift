//
//  StartButtonView.swift
//  Fructus
//
//  Created by ธนพงษ์ แจ้งสว่าง on 13/1/2567 BE.
//

import SwiftUI

struct StartButtonView: View {
   
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // MARK: - BODY
 
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
            Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
    }
}

#Preview {
    StartButtonView()
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
}
