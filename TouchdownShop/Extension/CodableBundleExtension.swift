//
//  CodableBundleExtension.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import Foundation
// swift generics <T>
extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // locate json file
        guard let url = self.url(forResource: file, withExtension: nil) else { fatalError("Failed to locate \(file) in bundle.") }
        // property for data
        guard let data = try? Data(contentsOf: url) else { fatalError("Failed to load data from \(file).") }
        // create decoder
        let decoder = JSONDecoder()
        // create property for decoded data
        guard let decodedData = try? decoder.decode(T.self, from: data) else { fatalError("Failed to decode \(file) from bundle.") }
        // return data
        return decodedData
    }
}
