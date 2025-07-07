//
//  CarouselTabView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct CarouselTabView: View {
    var body: some View {
        TabView {
            ForEach(carouselMock) { order in
                CarouselItemView(carousel: order)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
