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
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async { 
                self.isLoading = false
                switch result {
                case .success(let appetizers):
                    self.appetizer = appetizers
                    
                case .failure(let error):
                    switch error {
                        
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
