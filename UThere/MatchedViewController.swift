//
//  MatchedViewController.swift
//  UThere
//
//  Created by James Pang on 20/7/18.
//  Copyright © 2018 Pangers. All rights reserved.
//

import UIKit

class MatchedViewController: UIViewController {
    
    @IBAction func looksGoodTapped(_ sender: Any) {
        let secondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ConfirmViewController")
        
        navigationController?.pushViewController(secondVC, animated: true)
    }
}
