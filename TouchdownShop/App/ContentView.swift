//
//  ContentView.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding()
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15) {
                                ForEach(products) { product in
                                    ProductItemview(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                            }
                                        }
                                }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
            .environmentObject(Shop())
    }
}
