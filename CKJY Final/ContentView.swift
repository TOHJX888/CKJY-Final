//
//  ContentView.swift
//  CKJY Final
//
//  Created by Koo  on 18/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            RecipesView()
                .tabItem {
                    Label("Recipes", systemImage: "takeoutbag.and.cup.and.straw")
                }
            FoodListView()
                .tabItem {
                    Label("Food List", systemImage: "list.bullet.clipboard")
                }
            ProgressView()
                .tabItem {
                    Label("Progress", systemImage: "circle.circle")
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
