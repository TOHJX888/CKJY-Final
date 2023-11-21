//
//  FoodListInterfaceView.swift
//  CKJY Final
//
//  Created by RGS on 21/11/23.
//

import SwiftUI

struct FoodListInterfaceView: View {
    
    @Binding var ingredient: Ingredient

    @EnvironmentObject var ingredientManager: IngredientManager
    
    var body: some View {
        HStack {
            Image(systemName: ingredient.isEaten ? "checkmark.circle.fill" : "circle")
                .onTapGesture {
                    ingredient.isEaten.toggle()
                }
            VStack {
                Text(ingredient.name)
                    .strikethrough(ingredient.isEaten)
                if !ingredient.points.isEmpty {
                    HStack {
                        Text(ingredient.points)
                        Image(systemName: "leaf.fill")
                    }
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .strikethrough(ingredient.isEaten)
                }
            }
        }
    }
}

struct FoodListInterfaceView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListInterfaceView(ingredient: .constant(Ingredient(name: "apple", healthyRating: 2)))
            .environmentObject(IngredientManager())
    }
}
