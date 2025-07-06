//
//  StoreDetailsView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 06/07/25.
//

import SwiftUI

struct StoreDetailsView: View {
    let stores: StoreType
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(stores.headerImage)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text(stores.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Image(stores.logoImage)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(25)
                        .frame(width: 50, height: 50)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(stores.location)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    ForEach(1...stores.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.caption)
                            .foregroundColor(.yellow)
                    }
                    
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(stores.products) { product in
                    StoreDetailsItemView(product: product)
                }
            }
            .navigationTitle(stores.name)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack(spacing: 4) {
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        .foregroundColor(Color("ColorRed"))
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailsView(stores: storesMock[0])
}
