//
//  IngredientManager.swift
//  CKJY Final
//
//  Created by RGS on 20/11/23.
//

import Foundation
import SwiftUI

class IngredientManager: ObservableObject {
    @Published var ingredients: [Ingredient] = [] {
        didSet {
            save()
        }
    }
    
    @Published var searchTerm = ""
    
    var ingredientsFiltered: Binding<[Ingredient]> {
        Binding (
            get: {
                if self.searchTerm == "" {return self.ingredients}
                return self.ingredients.filter {
                    $0.name.lowercased().contains(self.searchTerm.lowercased())
                }
        },
        set: {
            self.ingredients = $0
        })
    }
        
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "ingredients.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedIngredients = try? propertyListEncoder.encode(ingredients)
        try? encodedIngredients?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedIngredientData = try? Data(contentsOf: archiveURL),
            let ingredientsDecoded = try? propertyListDecoder.decode([Ingredient].self, from: retrievedIngredientData) {
            ingredients = ingredientsDecoded
        }
    }
}
