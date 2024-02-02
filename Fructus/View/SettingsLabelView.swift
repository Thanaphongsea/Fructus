//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by ธนพงษ์ แจ้งสว่าง on 22/1/2567 BE.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelimage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelimage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", labelimage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
