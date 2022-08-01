//
//  FructusApp.swift
//  Fructus
//
//  Created by Mohamed El-Alafty on 28/07/2022.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnBoardingView()
            } else{
                ContentView()
            }
        }
    }
}
