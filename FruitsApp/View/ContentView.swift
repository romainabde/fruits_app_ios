//
//  ContentView.swift
//  FruitsApp
//
//  Created by COURS on 20/02/2026.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FruitViewModel()
    @State private var selectedIndex = 0
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                
                // Fond général
                Color(.systemGray6)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Spacer()
                    
                    // Conteneur principal
                    TabView(selection: $selectedIndex) {
                        
                        ForEach(Array(viewModel.fruits.enumerated()), id: \.element.id) { index, fruit in
                            
                            VStack(spacing: 20) {
                                
                                Spacer()
                                
                                Image(fruit.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 220)
                                
                                Text(fruit.name)
                                    .font(.largeTitle)
                                    .bold()
                                    .foregroundColor(.white)
                                
                                Text(fruit.shortDescription)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white.opacity(0.8))
                                    .padding(.horizontal)
                                
                                NavigationLink(destination: FruitListView()) {
                                    HStack {
                                        Text("Start")
                                            .bold()
                                        Image(systemName: "arrow.right")
                                    }
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .cornerRadius(12)
                                    .padding(.horizontal, 40)
                                }
                                
                                Spacer()
                                
                                // Pagination
                                HStack(spacing: 8) {
                                    ForEach(0..<viewModel.fruits.count, id: \.self) { i in
                                        Circle()
                                            .fill(i == selectedIndex ? Color.white : Color.gray.opacity(0.5))
                                            .frame(width: 8, height: 8)
                                    }
                                }
                                .padding(.bottom, 25)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.black)
                            )
                            .padding(.horizontal)
                            .tag(index)
                        }
                    }
                    .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    .frame(height: 600)
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
