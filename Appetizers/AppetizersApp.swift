//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Dominic Montalto on 14/02/2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
