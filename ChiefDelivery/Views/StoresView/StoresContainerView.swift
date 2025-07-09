//
//  StoresContainerView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title: String = "Lojas"
    @State var ratingFilter: Int = 0
    @State var distance: Range<Double> = 0..<50
    
    var filteredStores: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter && distance.contains(store.distance)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing:  10) {
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()

                StoresFilterView(
                    ratingFilter: $ratingFilter,
                    distance: $distance
                )
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                }
                
                ForEach(filteredStores) { store in
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
