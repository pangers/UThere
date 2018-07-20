//
//  MatchedViewController.swift
//  UThere
//
//  Created by James Pang on 20/7/18.
//  Copyright © 2018 Pangers. All rights reserved.
//

import Foundation
import UIKit

class SearchingViewController: UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        setupPush()
    }
    
    private func setupPush() {
        NotificationCenter.default.addObserver(forName: NSNotification.Name.init("Push"), object: nil, queue: nil) { [weak self] (_) in
            guard let `self` = self else { return }
            let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MatchedViewController")
            
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
}
