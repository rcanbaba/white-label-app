//
//  WebViewCoordinator.swift
//  dealroom
//
//  Created by Can Babaoğlu on 17.12.2023.
//

import Foundation
import WebKit

class WebViewCoordinator: NSObject, WKNavigationDelegate {
    var parent: WebView

    init(_ parent: WebView) {
        self.parent = parent
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("CAN - - STARTED")
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("CAN - - STOPPED")
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("CAN - - FAILED")
    }
}
