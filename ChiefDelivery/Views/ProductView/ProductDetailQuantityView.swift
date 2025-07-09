//
//  ProductDetailQuantityView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 09/07/25.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    @State private var productQuantity: Int = 0
    
    var body: some View {
        VStack(spacing: 8) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack(spacing: 16) {
                Button{
                    if productQuantity > 0 { productQuantity -= 1 }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                
                Button{
                    if productQuantity < 99 { productQuantity += 1 }
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
        }
    }
}

#Preview {
    ProductDetailQuantityView()
}
