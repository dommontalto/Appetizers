//
//  EmptyState.swift
//  Appetizers
//
//  Created by Dominic Montalto on 25/02/2024.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    
    var body: some View {
        
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }
        }
        .offset(y: -40)
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Default Message")
}
