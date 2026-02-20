//
//  FruitViewModel.swift
//  FruitsApp
//
//  Created by COURS on 20/02/2026.
//

import Foundation
import Combine

class FruitViewModel: ObservableObject {
    
    // Liste des fruit
    @Published var fruits: [Fruit] = [
        
        Fruit(
            name: "Pomme",
            imageName: "Pomme",
            shortDescription: "Un fruit rouge sucré",
            description: "La pomme est riche en fibres et en vitamine C. Elle favorise une bonne digestion et renforce le système immunitaire.",
            
            kilojoules: 218,
            kilocalories: 52,
            sugar: 10.4,
            fat: 0.2,
            protein: 0.3,
            
            vitamins: ["Vitamine C", "Vitamine A", "Vitamine B6"],
            minerals: ["Potassium", "Magnésium"]
        ),
        
        Fruit(
            name: "Banane",
            imageName: "Banane",
            shortDescription: "Un fruit jaune énergétique",
            description: "La banane est riche en potassium et en glucides naturels. Elle est idéale pour les sportifs et apporte rapidement de l'énergie.",
            
            kilojoules: 371,
            kilocalories: 89,
            sugar: 12.2,
            fat: 0.3,
            protein: 1.1,
            
            vitamins: ["Vitamine B6", "Vitamine C"],
            minerals: ["Potassium", "Magnésium"]
        ),
        
        Fruit(
            name: "Poire",
            imageName: "Poire",
            shortDescription: "Un fruit vert juteux",
            description: "La poire est douce, hydratante et riche en fibres. Elle contribue à une bonne santé digestive.",
            
            kilojoules: 239,
            kilocalories: 57,
            sugar: 9.8,
            fat: 0.1,
            protein: 0.4,
            
            vitamins: ["Vitamine C", "Vitamine K"],
            minerals: ["Potassium", "Cuivre"]
        )
    ]
}
