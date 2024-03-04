//
//  LoadingView.swift
//  Appetizers
//
//  Created by Dominic Montalto on 15/02/2024.
//

import SwiftUI

struct ActivityIndictor: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndictorView = UIActivityIndicatorView(style: .large)
        activityIndictorView.color = .brandPrimary
        activityIndictorView.startAnimating()
        return activityIndictorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
    
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ActivityIndictor()
        }
    }
}
