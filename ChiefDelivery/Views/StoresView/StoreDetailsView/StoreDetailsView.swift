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
                StoreDetailsHeaderView(stores: stores)
                
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
