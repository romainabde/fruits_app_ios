//
//  Fruit.swift
//  FruitsApp
//
//  Created by COURS on 20/02/2026.
//

import Foundation

// Modèle représentant un fruit
struct Fruit: Identifiable {
    let id = UUID()

    // Informations générales
    let name: String
    let imageName: String
    let shortDescription: String
    let description: String
    
    // Valeurs énergétiques
    let kilojoules: Double
    let kilocalories: Double
    
    // Macronutriments
    let sugar: Double
    let fat: Double
    let protein: Double
    
    // Micronutriments
    let vitamins: [String]
    let minerals: [String]
    
    static let example = Fruit(
        name: "Pomme",
        imageName: "Pomme",
        shortDescription: "Un fruit rouge sucré",
        description: "Description complète de test.",
        
        kilojoules: 218,
        kilocalories: 52,
        sugar: 10.4,
        fat: 0.2,
        protein: 0.3,
        
        vitamins: ["Vitamine C", "Vitamine A"],
        minerals: ["Potassium", "Magnésium"]
    )
}


