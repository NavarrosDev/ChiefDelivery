//
//  StoreItemView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct StoreItemView: View {
    let stores: StoreType
    
    var body: some View {
        HStack {
            Image(stores.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            
            VStack {
                Text(stores.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreItemView(stores: storesMock[0])
    .padding()
}
