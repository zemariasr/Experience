//
//  HeroViewController.swift
//  MarvelQuiz
//
//  Created by José Maria Só Rodrigues on 05/11/2018.
//  Copyright © 2018 ZM FIGHTER SYSTEM. All rights reserved.
//

import UIKit
import WebKit

class HeroViewController: UIViewController {

    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    
    var hero: Hero!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: hero.urls.first!.url)
        let request = URLRequest(url: url!)
        title = hero.name
        
        webView.allowsBackForwardNavigationGestures = true
        webView.navigationDelegate = self as? WKNavigationDelegate
        webView.load(request)
    }
    
}
