//
//  ViewController.swift
//  UIActivityIndicatorViewSample
//
//  Created by satoshi.marumoto on 2020/03/30.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var activityIndicatorView = UIActivityIndicatorView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        activityIndicatorView.center = view.center
        activityIndicatorView.color = .systemPink
        activityIndicatorView.style = UIActivityIndicatorView.Style.large
        activityIndicatorView.hidesWhenStopped = true

        view.addSubview(activityIndicatorView)
    }
    
    @IBAction func startActivityIndicator(_ sender: UIButton) {
        
        activityIndicatorView.startAnimating()

        DispatchQueue.global(qos: .default).async {
            Thread.sleep(forTimeInterval: 5)

            DispatchQueue.main.async {
                self.activityIndicatorView.stopAnimating()
            }
        }
    }
    
    @IBAction func stopActivityIndicator(_ sender: UIButton) {
        activityIndicatorView.stopAnimating()
    }
}

