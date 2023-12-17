//
//  WebViewCoordinator.swift
//  dealroom
//
//  Created by Can Babaoğlu on 17.12.2023.
//

import Foundation
import WebKit

class WebViewCoordinator: NSObject, WKNavigationDelegate {
    var viewModel: WebViewModel

    init(viewModel: WebViewModel) {
        self.viewModel = viewModel
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("CAN - - STARTED")
        viewModel.webViewDidStartLoading()
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("CAN - - STOPPED")
        viewModel.webViewDidFinishLoading()
    }

    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print("CAN - - FAILED")
        viewModel.webViewDidFailWithError(error)
    }
}
