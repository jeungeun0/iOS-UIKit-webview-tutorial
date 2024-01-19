//
//  ViewController.swift
//  iOS-UIKit-webview-tutorial
//
//  Created by 안정은 on 1/19/24.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //외부 사파리 웹뷰
    @IBAction func handleExternalWebviewButton(_ sender: Any) {
        guard let url = URL(string: "https://doorganizedcoding.tistory.com") else {
            print("url error")
            return
        }
        UIApplication.shared.open(url)
    }
    
    //사파리 뷰컨
    @IBAction func handleSafariViewControllerButton(_ sender: Any) {
        guard let url = URL(string: "https://doorganizedcoding.tistory.com") else {
            print("url error")
            return
        }
        let safariVC = SFSafariViewController(url: url)
        self.present(safariVC, animated: true)
    }
    
    //커스텀 웹뷰
    @IBAction func handleCustomWebviewButton(_ sender: Any) {
        guard let url = URL(string: "https://doorganizedcoding.tistory.com") else {
            print("url error")
            return
        }
        
        guard let customWebVC = CustomWebViewController(url: url) else {
            print("customWebVC error")
            return
        }
        
//        customWebVC.url = url
        
        self.present(customWebVC, animated: true)
    }
}

