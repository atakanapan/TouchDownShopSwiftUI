//
//  TouchdownShopApp.swift
//  TouchdownShop
//
//  Created by Atakan Apan on 1/23/23.
//

import SwiftUI

@main
struct TouchdownShopApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
