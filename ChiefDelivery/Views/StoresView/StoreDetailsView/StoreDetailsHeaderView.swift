//
//  StoreDetailsHeaderView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 09/07/25.
//

import SwiftUI

struct StoreDetailsHeaderView: View {
    let stores: StoreType
    
    var body: some View {
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
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoreDetailsHeaderView(stores: storesMock[0])
}
