//
//  ContentView.swift
//  dealroom
//
//  Created by Can Babaoğlu on 17.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: Constants.baseURL)!)
                .preferredColorScheme(.light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .light)
    }
}
