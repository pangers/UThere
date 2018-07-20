//
//  ViewController.swift
//  UThere
//
//  Created by James Pang on 20/7/18.
//  Copyright © 2018 Pangers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
    }

    @IBAction func uThereTapped(_ sender: Any) {
        
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchingViewController")
        
        navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}

