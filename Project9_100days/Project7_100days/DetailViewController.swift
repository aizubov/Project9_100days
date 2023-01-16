//
//  DetailViewController.swift
//  Project7_100days
//
//  Created by user228564 on 1/12/23.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    var webView: WKWebView!
    var detailItem: Petition?

    override func loadView() {
        webView = WKWebView()
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else {
            return
        }
        //body { font-size: 130%; }
        let html = """
            <html>
                <head>
                    <meta name="viewport" content="width=device-width", initial-scale=1">
                    <style>
                    
                    body {
                    text-align: justify;
                    }
                    </style>
                </head>
                <body>
                <center><h3>\(detailItem.title)</h3></center>
                    \(detailItem.body)
                </body>
            </html>
            """
        
        webView.loadHTMLString(html, baseURL: nil)
    }
}
