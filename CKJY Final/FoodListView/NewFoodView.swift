//
//  NewFoodView.swift
//  CKJY Final
//
//  Created by Celine Quek on 18/11/23.
//

import SwiftUI

struct NewFoodView: View {
    
    @State private var ingredients = [
        Ingredient(name: "Agar-agar", healthyRating: 1),
        Ingredient(name: "Alcohol", healthyRating: 1),
        Ingredient(name: "Apple cider", healthyRating: 1),
        Ingredient(name: "Almond butter", healthyRating: 2),
        Ingredient(name: "Bacon", healthyRating: 0),
        Ingredient(name: "Barley malt syrup", healthyRating: 1),
        Ingredient(name: "Beef fat", healthyRating: 0),
        Ingredient(name: "BHA (butylated hydroxyanisole", healthyRating: 0),
        Ingredient(name: "BHT (butylated hydroxytoluene", healthyRating: 0),
        Ingredient(name: "Brown sugar", healthyRating: 0),
        Ingredient(name: "Butter", healthyRating: 0),
        Ingredient(name: "Caraway seeds", healthyRating: 2),
        Ingredient(name: "Carrageenan", healthyRating: 1),
        Ingredient(name: "Cheese", healthyRating: 1),
        Ingredient(name: "Cheese spreads", healthyRating: 0),
        Ingredient(name: "Chicken", healthyRating: 1),
        Ingredient(name: "Chia seeds", healthyRating: 2),
        Ingredient(name: "Chives", healthyRating: 2),
        Ingredient(name: "Cilantro", healthyRating: 2),
        Ingredient(name: "Cinnamon", healthyRating: 2),
        Ingredient(name: "Clarified butter", healthyRating: 2),
        Ingredient(name: "Coconut flour", healthyRating: 2),
        Ingredient(name: "Coconut milk", healthyRating: 2),
        Ingredient(name: "Coconut nectar", healthyRating: 2),
        Ingredient(name: "Coconut oil", healthyRating: 2),
        Ingredient(name: "Coconut sugar", healthyRating: 1),
        Ingredient(name: "Coconut water", healthyRating: 2),
        Ingredient(name: "Coffee", healthyRating: 1),
        Ingredient(name: "Corn oil", healthyRating: 0),
        Ingredient(name: "Cornmeal", healthyRating: 2),
        Ingredient(name: "Cottage cheese", healthyRating: 2),
        Ingredient(name: "Cranberries", healthyRating: 2),
        Ingredient(name: "Dark chocolate", healthyRating: 2),
        Ingredient(name: "Date sugar", healthyRating: 1),
        Ingredient(name: "Dijon mustard", healthyRating: 2),
        Ingredient(name: "Dragon fruit", healthyRating: 2),
        Ingredient(name: "Edamame beans", healthyRating: 2),
        Ingredient(name: "Egg whites", healthyRating: 2),
        Ingredient(name: "Egg yolks", healthyRating: 2),
        Ingredient(name: "Eggs", healthyRating: 2),
        Ingredient(name: "Elderberries", healthyRating: 2),
        Ingredient(name: "Fennel", healthyRating: 2),
        Ingredient(name: "Fennel seeds", healthyRating: 2),
        Ingredient(name: "Figs", healthyRating: 2),
        Ingredient(name: "Fish sauce", healthyRating: 1),
        Ingredient(name: "Flaxseeds", healthyRating: 2),
        Ingredient(name: "Fruits", healthyRating: 2),
        Ingredient(name: "Garlic", healthyRating: 2),
        Ingredient(name: "Gelatin", healthyRating: 1),
        Ingredient(name: "Ginger", healthyRating: 2),
        Ingredient(name: "Ginger tea", healthyRating: 2),
        Ingredient(name: "Goat cheese", healthyRating: 2),
        Ingredient(name: "Gooseberries", healthyRating: 2),
        Ingredient(name: "Gouda cheese", healthyRating: 2),
        Ingredient(name: "Greek dressing", healthyRating: 2),
        Ingredient(name: "Greek yogurt", healthyRating: 2),
        Ingredient(name: "Green banana flour", healthyRating: 1),
        Ingredient(name: "Green tea", healthyRating: 2),
        Ingredient(name: "Guacamole", healthyRating: 2),
        Ingredient(name: "Guar gum", healthyRating: 1),
        Ingredient(name: "Grits", healthyRating: 2),
        Ingredient(name: "Ground beef", healthyRating: 2),
        Ingredient(name: "Gruyere cheese", healthyRating: 2),
        Ingredient(name: "Hazelnut flour", healthyRating: 1),
        Ingredient(name: "Hazulnut oil", healthyRating: 2),
        Ingredient(name: "Hemp seeds", healthyRating: 2),
        Ingredient(name: "Hemp milk", healthyRating: 2),
        Ingredient(name: "Herbs", healthyRating: 2),
        Ingredient(name: "Spices", healthyRating: 2),
        Ingredient(name: "Hibiscus tea", healthyRating: 2),
        Ingredient(name: "Corn syrup", healthyRating: 0),
        Ingredient(name: "High-fructose corn syrup", healthyRating: 0),
        Ingredient(name: "Honey", healthyRating: 1),
        Ingredient(name: "Hot dogs", healthyRating: 0),
        Ingredient(name: "Hummus", healthyRating: 2),
        Ingredient(name: "Iced tea", healthyRating: 2),
        Ingredient(name: "Infused water", healthyRating: 2),
        Ingredient(name: "Ketchup", healthyRating: 1),
        Ingredient(name: "Kombucha", healthyRating: 2),
        Ingredient(name: "Lard", healthyRating: 0),
        Ingredient(name: "Leek", healthyRating: 2),
        Ingredient(name: "Lentil flour", healthyRating: 2),
        Ingredient(name: "Lentil soup", healthyRating: 2),
        Ingredient(name: "Lettuce", healthyRating: 2),
        Ingredient(name: "Lecithin", healthyRating: 1),
        Ingredient(name: "Lime juice", healthyRating: 2),
        Ingredient(name: "Lingonberry", healthyRating: 2),
        Ingredient(name: "Lychee", healthyRating: 2),
        Ingredient(name: "Macadamia nuts", healthyRating: 2),
        Ingredient(name: "Macadamia nut oil", healthyRating: 2),
        Ingredient(name: "Malt extract", healthyRating: 2),
        Ingredient(name: "Maltitol", healthyRating: 1),
        Ingredient(name: "Maltodextrin", healthyRating: 1),
        Ingredient(name: "Maple extract", healthyRating: 2),
        Ingredient(name: "Maple nectar", healthyRating: 2),
        Ingredient(name: "Maple sugar", healthyRating: 1),
        Ingredient(name: "Maple syrup", healthyRating: 1),
        Ingredient(name: "Marinara sauce", healthyRating: 2),
        Ingredient(name: "Mayonnaise", healthyRating: 1),
        Ingredient(name: "Miso", healthyRating: 2),
        Ingredient(name: "Mocha", healthyRating: 2),
        Ingredient(name: "Molasses", healthyRating: 1),
        Ingredient(name: "Mustard", healthyRating: 2),
        Ingredient(name: "Nut butter", healthyRating: 2),
        Ingredient(name: "Peanut butter", healthyRating: 2),
        Ingredient(name: "Almond butter", healthyRating: 2),
        Ingredient(name: "Nutmeg", healthyRating: 2),
        Ingredient(name: "Nutritional yeast", healthyRating: 2),
        Ingredient(name: "Olive oil", healthyRating: 2),
        Ingredient(name: "Olives", healthyRating: 2),
        Ingredient(name: "Orange blossam water", healthyRating: 2),
        Ingredient(name: "Orange", healthyRating: 2),
        Ingredient(name: "Oregano", healthyRating: 2),
        Ingredient(name: "Papaya", healthyRating: 2),
        Ingredient(name: "Paprika", healthyRating: 2),
        Ingredient(name: "Parmesan cheese", healthyRating: 2),
        Ingredient(name: "Parsley", healthyRating: 2),
        Ingredient(name: "Hydrogented oils", healthyRating: 0),
        Ingredient(name: "Passion fruit", healthyRating: 2),
        Ingredient(name: "Peanut oil", healthyRating: 0),
        Ingredient(name: "Peanut butter", healthyRating: 2),
        Ingredient(name: "Peanuts", healthyRating: 2),
        Ingredient(name: "Pecan oil", healthyRating: 0),
        Ingredient(name: "Pecans", healthyRating: 2),
        Ingredient(name: "Pepper", healthyRating: 2),
        Ingredient(name: "Peppermint tea", healthyRating: 2),
        Ingredient(name: "Pickles", healthyRating: 2),
        Ingredient(name: "Pine nut oil", healthyRating: 2),
        Ingredient(name: "Pine nuts", healthyRating: 2),
        Ingredient(name: "Pineapple guava", healthyRating: 2),
        Ingredient(name: "Pineapple juice", healthyRating: 2),
        Ingredient(name: "Pistachio oil", healthyRating: 2),
        Ingredient(name: "Pistachios", healthyRating: 2),
        Ingredient(name: "Pomegranate", healthyRating: 2),
        Ingredient(name: "Poppy seeds", healthyRating: 2),
        Ingredient(name: "Pork", healthyRating: 2),
        Ingredient(name: "Portobello mushroom", healthyRating: 2),
        Ingredient(name: "Powdered sugar", healthyRating: 0),
        Ingredient(name: "Poultry", healthyRating: 2),
        Ingredient(name: "Processed cheese", healthyRating: 0),
        Ingredient(name: "Processes food", healthyRating: 0),
        Ingredient(name: "Protein shake", healthyRating: 2),
        Ingredient(name: "Prunes", healthyRating: 2),
        Ingredient(name: "Pumpkin", healthyRating: 2),
        Ingredient(name: "Pumpkin seeds", healthyRating: 2),
        Ingredient(name: "Quark", healthyRating: 2),
        Ingredient(name: "Quinoa", healthyRating: 2),
        Ingredient(name: "Quinoa flour", healthyRating: 2),
        Ingredient(name: "Quinoa pilaf", healthyRating: 2),
        Ingredient(name: "Raisins", healthyRating: 2),
        Ingredient(name: "Raspberry", healthyRating: 2),
        Ingredient(name: "Red currents", healthyRating: 2),
        Ingredient(name: "Red palm oil", healthyRating: 2),
        Ingredient(name: "Red wine", healthyRating: 1),
    ]
    @State private var isSheetPresented = false
    @State private var searchTerm = ""
    @EnvironmentObject var newFoodManager: NewFoodManager
    
    var body: some View {
        NavigationStack {
            List(newFoodManager.ingredientsFiltered, editActions: [.all]) { $ingredient in
                FoodListInterfaceView(ingredient: $ingredient)
                //                FoodListInterfaceView(ingredient: $ingredient, Binding(get: {ingredient}, set: {ingredient = $0}))
                
            
            }
            .searchable(text: $newFoodManager.newFoodSearchTerm)
            .navigationTitle("My Food List")
        }        
    }
}

struct NewFoodView_Previews: PreviewProvider {
    static var previews: some View {
        NewFoodView()
            .environmentObject(NewFoodManager())
    }
}

