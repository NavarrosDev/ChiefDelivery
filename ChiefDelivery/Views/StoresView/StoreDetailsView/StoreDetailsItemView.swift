//
//  StoreDetailsItemView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import SwiftUI

struct StoreDetailsItemView: View {
    let product: ProductType
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        
        Button {
            selectedProduct = product
        } label: {
            HStack(spacing: 8) {
                VStack(alignment: .leading ,spacing: 7) {
                    Text(product.name)
                        .font(.subheadline)
                        .bold()
                    
                    Text(product.description)
                        .foregroundColor(.black.opacity(0.5))
                        .multilineTextAlignment(.leading)
                    
                    Text(product.formattedPrice)
                }
                
                Spacer()
                
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .frame(width: 120, height: 120)
                    .shadow(
                        color: Color.black.opacity(0.3),
                        radius: 20, x: 6, y: 8
                    )
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .foregroundColor(.black)
        }
        .sheet(item: $selectedProduct) { product in
            ProductDetailView(product: product)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreDetailsItemView(product: storesMock[0].products[0])
}
