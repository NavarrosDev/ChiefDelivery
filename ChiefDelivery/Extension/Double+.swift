//
//  Double+.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString: String = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
    }
}
