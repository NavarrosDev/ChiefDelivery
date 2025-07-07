//
//  StoresContainerView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 05/07/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title: String = "Lojas"
    @State private var ratingFilter: Int = 0
    @State private var distance: Range<Double> = 0..<50
    
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
                
                Menu("Estrelas") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { i in
                        Button {
                            ratingFilter = i
                        } label: {
                            Text("\(i) \(i == 1 ? "estrela" : "estrelas") ou mais")
                        }
                    }
                }
                .foregroundColor(.black)
                
                Menu("Distancia") {
                    
                    Button {
                        distance = 0..<50
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(Array(stride(from: 0, through: 20, by: 5)), id: \.self) { i in
                        Button {
                            distance = i..<(i + 6)
                        } label: {
                            Text("De \(Int(i)) até \(Int(i + 5)) km")
                        }
                    }
                }
                .foregroundColor(.black)
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
