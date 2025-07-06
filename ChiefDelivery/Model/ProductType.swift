//
//  ProductType.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
}
