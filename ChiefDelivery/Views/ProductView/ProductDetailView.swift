//
//  ProductDetailView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
    @State private var productQuantity: Int = 0
    
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
            
            Spacer()
            
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
}

#Preview(traits: .sizeThatFitsLayout) {
    ProductDetailView(product: storesMock[0].products[0])
}
