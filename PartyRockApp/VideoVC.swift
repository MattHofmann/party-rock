//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Matthias Hofmann on 06.09.16.
//  Copyright © 2016 MatthiasHofmann. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = partyRock.videoTitel
        
        
        // webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
        
        
        let bounds = UIScreen.main.bounds
        let width = bounds.size.width - 20
        let height = 200
        let frame = 0
        
        webView.isOpaque = false
        webView.backgroundColor = UIColor.clear
        webView.scrollView.isScrollEnabled = false
        webView.scrollView.bounces = false
        
        print("WebviewWidth: \(width)")
        print("WebviewHeight \(height)")
        
        
        let adjustedVideoURL = "<iframe width=\"\(width)\" height=\"\(height)\" src=\"\(partyRock.videoURL)?&playsinline=1\" frameborder=\"\(frame)\" allowfullscreen></iframe>"
        
        
        webView.allowsInlineMediaPlayback = true
        webView.loadHTMLString(adjustedVideoURL, baseURL: nil)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dismissVC(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: {});
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
