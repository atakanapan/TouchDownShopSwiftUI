//
//  ProductDetailView.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // navigation bar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.bottom, 10)
            
            // header
            HeaderDetailView()
                .padding(.horizontal)
            
            // detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // detail bottom part
            VStack(alignment: .center, spacing: 0) {
                // ratings and sizes
                RatingSizesDetailView()
                    .zIndex(1)
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // description
                ScrollView(.vertical, showsIndicators: false){
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                // quantatiy and favorite
                QuantityFavoriteDetailView()
                    .padding(.vertical, 10)
                
                // add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }
            .padding(.horizontal)
            .background(Color.white
            .clipShape(CustomShape())
            .padding(.top, -105))
            .ignoresSafeArea(.all, edges: .all)
        }
        .zIndex(0)
        .background(
        Color( red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
    }
}
