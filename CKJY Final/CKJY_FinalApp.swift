//
//  CKJY_FinalApp.swift
//  CKJY Final
//
//  Created by Koo  on 18/11/23.
//

import SwiftUI

@main
struct CKJY_FinalApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(IngredientManager())
        }
    }
}
