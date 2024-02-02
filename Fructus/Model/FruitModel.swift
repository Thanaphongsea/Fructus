//
//  FruitModel.swift
//  Fructus
//
//  Created by ธนพงษ์ แจ้งสว่าง on 13/1/2567 BE.
//

import SwiftUI


struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
