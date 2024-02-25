//
//  OrderView.swift
//  Appetizers
//
//  Created by Dominic Montalto on 14/02/2024.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            VStack {
                List{
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                     .listStyle(InsetGroupedListStyle())
                
                Button {
                    
                } label: {
                    APButton(title: "Place Order    ")
                }
            }
           .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
