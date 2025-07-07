//
//  StoreType.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let distance: Double
    let products: [ProductType]
}
