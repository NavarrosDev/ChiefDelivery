//
//  StoresContainerView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title: String = "Lojas"
    var body: some View {
        VStack(alignment: .leading, spacing:  10) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { store in
                    NavigationLink {
                        StoreDetailsView(stores: store)
                    } label: {
                        StoreItemView(stores: store)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    StoresContainerView()
}
