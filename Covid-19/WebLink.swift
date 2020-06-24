//
//  WebLink.swift
//  Covid-19
//
//  Created by User02 on 2020/6/16.
//  Copyright © 2020 sun. All rights reserved.
//


import SwiftUI
import WebKit
struct WebLink: UIViewRepresentable {
    
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }
    
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
    
    typealias UIViewType = WKWebView
}
