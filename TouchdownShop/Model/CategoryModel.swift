//
//  CategoryModel.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
