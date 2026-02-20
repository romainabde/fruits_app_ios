//
//  FruitDetailView.swift
//  FruitsApp
//
//  Created by COURS on 20/02/2026.
//

import SwiftUI

struct FruitDetailView: View {
    
    let fruit: Fruit
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {
                
                // Nom du fruit
                Text(fruit.name)
                    .font(.largeTitle)
                    .bold()
                
                // Courte description
                Text(fruit.shortDescription)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                // Image
                HStack {
                    Spacer()
                    
                    Image(fruit.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 250)
                    
                    Spacer()
                }
                
                // Menu déroulant
                DisclosureGroup("Valeurs nutritionnelles pour 100g") {
                    
                    VStack(spacing: 12) {
                        
                        NutritionRow(title: "Énergie", value: "\(fruit.kilocalories) kcal / \(fruit.kilojoules) kJ")
                        
                        NutritionRow(title: "Sucres", value: "\(fruit.sugar) g")
                        
                        NutritionRow(title: "Lipides", value: "\(fruit.fat) g")
                        
                        NutritionRow(title: "Protéines", value: "\(fruit.protein) g")
                        
                        NutritionRow(
                            title: "Vitamines",
                            value: fruit.vitamins.joined(separator: ", ")
                        )
                        
                        NutritionRow(
                            title: "Minéraux",
                            value: fruit.minerals.joined(separator: ", ")
                        )
                    }
                    .padding(.top, 10)
                }
                .font(.headline)
                
                // Learn more
                Text("En savoir plus sur \(fruit.name)")
                    .font(.headline)
                    .padding(.top)
                
                // Description complète
                Text(fruit.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(fruit.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NutritionRow: View {
    
    let title: String
    let value: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.primary)
            
            Spacer()
            
            Text(value)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    FruitDetailView(fruit: .example)
}
