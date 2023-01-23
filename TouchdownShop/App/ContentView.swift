//
//  ContentView.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    // this constant to get safe area top on every device
    
    var body: some View {
        ZStack {
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
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                }
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 14")
    }
}
