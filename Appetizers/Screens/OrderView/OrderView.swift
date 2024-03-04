//
//  OrderView.swift
//  Appetizers
//
//  Created by Dominic Montalto on 14/02/2024.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List{
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                         .listStyle(InsetGroupedListStyle())
                    
                    Button {
                        
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \nPlease add an appitizer!")
                }
            }
           .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
