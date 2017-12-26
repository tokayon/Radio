//
//  PlayerViewController.swift
//  Radio
//
//  Created by Serge Sinkevych on 12/13/17.
//  Copyright © 2017 Serge Sinkevych. All rights reserved.
//

import UIKit
import WebKit

class PlayerViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var logoView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var radio: Radio?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        webView.isOpaque = false
        webView.backgroundColor = .clear
        guard let radio = radio else { return }
        self.navigationItem.title = radio.name
        self.logoView.image = radio.logo
        if let radioUrl = URL(string: radio.url) {
            webView.load(URLRequest(url: radioUrl))
            activityIndicator.startAnimating()
        }        
    }
    
}

extension PlayerViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
}
