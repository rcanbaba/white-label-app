//
//  ContentView.swift
//  dealroom
//
//  Created by Can Babaoğlu on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = WebViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                WebView(url: URL(string: Constants.baseURL)!,
                        viewModel: viewModel)
                if viewModel.isLoading {
                    Text("Loading...")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white.opacity(0.5))
                }
            }
        }
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
