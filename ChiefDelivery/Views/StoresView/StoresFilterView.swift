//
//  StoresFilterView.swift
//  ChiefDelivery
//
//  Created by Gabriel Navarro on 09/07/25.
//

import SwiftUI

struct StoresFilterView: View {
    @Binding var ratingFilter: Int
    @Binding var distance: Range<Double>
    
    var body: some View {
     
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
                    distance = Double(i)..<Double(i + 6)
                } label: {
                    Text("De \(Int(i)) até \(Int(i + 5)) km")
                }
            }
        }
        .foregroundColor(.black)
    }
}

#Preview {
    StoresFilterView(
        ratingFilter: .constant(1),
        distance: .constant(1..<50)
    )
}
