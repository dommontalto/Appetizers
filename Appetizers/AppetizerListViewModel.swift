//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Dominic Montalto on 15/02/2024.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizer: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading = false 
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async { 
                isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizer = appetizers
                    
                case .failure(let error):
                    switch error {
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
