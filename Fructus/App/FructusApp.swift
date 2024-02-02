//
//  FructusApp.swift
//  Fructus
//
//  Created by ธนพงษ์ แจ้งสว่าง on 13/1/2567 BE.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
