//
//  CarouselItemView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct CarouselItemView: View {
    let carousel: OrderType
    
    var body: some View {
        Image(carousel.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselItemView(carousel: OrderType(id: 1,
                                      name: "Qualquer",
                                      image: "barbecue-banner"))
    .padding()
}
