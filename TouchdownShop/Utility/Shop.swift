//
//  Shop.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/25/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
