//
//  CustomViewController.swift
//  iOS-UIKit-webview-tutorial
//
//  Created by 안정은 on 1/19/24.
//

import Foundation
import UIKit
import WebKit

class CustomWebViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var url: URL? = nil
    
    init?(url: URL) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let url = self.url {
            let myRequest = URLRequest(url: url)
            webView.load(myRequest)
        }
        
    }
}

