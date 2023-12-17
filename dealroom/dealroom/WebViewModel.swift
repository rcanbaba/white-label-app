//
//  WebViewModel.swift
//  dealroom
//
//  Created by Can Babaoğlu on 17.12.2023.
//

import Foundation
import SwiftUI
import WebKit

class WebViewModel: ObservableObject {
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?
    
    func webViewDidStartLoading() {
        isLoading = true
    }
    
    func webViewDidFinishLoading() {
        isLoading = false
    }
    
    func webViewDidFailWithError(_ error: Error) {
        errorMessage = error.localizedDescription
        isLoading = false
    }
}
