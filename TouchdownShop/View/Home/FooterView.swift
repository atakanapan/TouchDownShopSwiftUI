//
//  FooterView.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, lightewight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright © Atakan Apan \n All rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
