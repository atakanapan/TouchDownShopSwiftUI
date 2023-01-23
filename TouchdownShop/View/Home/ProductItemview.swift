//
//  ProductItemview.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import SwiftUI

struct ProductItemview: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            // name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            // price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }
    }
}

struct ProductItemview_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemview(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
