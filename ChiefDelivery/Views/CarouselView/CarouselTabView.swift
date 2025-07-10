//
//  CarouselTabView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct CarouselTabView: View {
    @State var currentIndex: Int = 1
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(carouselMock) { order in
                CarouselItemView(carousel: order)
                    .tag(order.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer
                .scheduledTimer(withTimeInterval: 3,repeats: true) { _ in
                    withAnimation(.easeInOut(duration: 1)) {
                      if currentIndex > carouselMock.count {
                          currentIndex = 1
                      }
                      currentIndex += 1
                    }
                }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CarouselTabView()
}
