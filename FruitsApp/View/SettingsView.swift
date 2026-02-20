//
//  SettingsView.swift
//  FruitsApp
//
//  Created by COURS on 20/02/2026.
//


import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 25) {
                
                // =========================
                // FRUCTUS
                // =========================
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        Text("FRUCTUS")
                            .font(.headline)
                        
                        Spacer()
                        
                        Image(systemName: "info.circle")
                    }
                    
                    Divider()
                    
                    HStack(alignment: .top, spacing: 15) {
                        
                        Image("Icon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .cornerRadius(12)
                        
                        Text("Fructus est une application permettant de comparer les fruits selon leurs valeurs nutritionnelles et leurs bienfaits pour la santé.")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                
                
                // =========================
                // CUSTOMISATION
                // =========================
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        Text("Customisation")
                            .font(.headline)
                        
                        Spacer()
                        
                        Image(systemName: "paintbrush")
                    }
                    
                    Text("Activez le bouton pour revenir à l'écran d'accueil.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    HStack {
                        Text("REDÉMARRER")
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Toggle("", isOn: $isOnboarding)
                            .labelsHidden()
                    }
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                
                
                // =========================
                // APPLICATION
                // =========================
                
                VStack(alignment: .leading, spacing: 15) {
                    
                    HStack {
                        Text("Application")
                            .font(.headline)
                        
                        Spacer()
                        
                        Image(systemName: "apps.iphone")
                    }
                    
                    SettingsRow(name: "Développeur", value: "Romain")
                    SettingsRow(name: "Designer", value: "Romain")
                    SettingsRow(name: "Compatibilité", value: "iOS 16+")
                }
                .padding()
                .background(Color.white)
                .cornerRadius(15)
                
            }
            .padding()
        }
        .background(Color(.systemGray6))
        .navigationTitle("Paramètres")
        .navigationBarTitleDisplayMode(.large)
    }
}

struct SettingsRow: View {
    
    let name: String
    let value: String
    
    var body: some View {
        HStack {
            Text(name)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    NavigationStack {
        SettingsView()
    }
}
