//
//  ViewController.swift
//  UThere
//
//  Created by James Pang on 20/7/18.
//  Copyright © 2018 Pangers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.isHidden = true
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.init("Push"), object: nil, queue: nil) { [weak self] (_) in
            guard let `self` = self else { return }
            let alert = UIAlertController(title: "Hi", message: "hey", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction.init(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }

    @IBAction func uThereTapped(_ sender: Any) {
//        let url = URL(string: "my url")!
        
//        activityIndicator.isHidden = false
//        activityIndicator.startAnimating()
//        let dataTask = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
//            guard let `self` = self else { return }
//
//            self.activityIndicator.stopAnimating()
//
//
//        }
//
//        dataTask.resume()
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController")
        
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}

