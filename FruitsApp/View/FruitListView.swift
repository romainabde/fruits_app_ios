//
//  FruitListView.swift
//  FruitsApp
//
//  Created by COURS on 20/02/2026.
//

import SwiftUI

struct FruitListView: View {
    
    @StateObject var viewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                // Background color gris
                Color(.systemGray6)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                    
                    // Titre
                    Text("Produits")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal)
                        .padding(.top)
                    
                    // Liste des fruits
                    List(viewModel.fruits) { fruit in
                        
                        NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                            HStack(spacing: 15) {
                                
                                Image(fruit.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 60, height: 60)
                                    .cornerRadius(10)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(fruit.name)
                                        .font(.headline)
                                    
                                    Text(fruit.shortDescription)
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding(.vertical, 5)
                        }
                        .listRowBackground(Color.white)
                    }
                    .listStyle(.plain)
                    .scrollContentBackground(.hidden)
                    .background(Color.white)
                    .cornerRadius(12)
                    .padding()
                }
            }
            
            // Bouton Settings
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "slider.horizontal.3")
                    }
                }
            }
        }
    }
}

#Preview {
    FruitListView()
}
