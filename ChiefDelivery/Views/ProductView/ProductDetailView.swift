//
//  ProductDetailView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
    
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(product.description)
                    .padding(.horizontal)
                
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            
            Spacer()
            
            ProductDetailQuantityView()
            
            Spacer()
            
            ProductDetailButtonView()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storesMock[0].products[0])
}

struct ProductDetailButtonView: View {
    var body: some View {
        Button {
            //
        } label: {
            HStack {
                Image(systemName: "cart")
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(36)
            .shadow(
                color: Color("ColorRedDark").opacity(0.5),
                radius: 10, x: 6, y: 8
            )
        }
    }
}
