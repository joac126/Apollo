//
//  Hotline.swift
//  Apollo
//
//  Created by Karolina Viera on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit

class Hotline: UIViewController {
    
    @IBAction func suicHot(_ sender: Any) {
        guard let number = URL(string: "tel://" + "2025794610") else { return }
        UIApplication.shared.open(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}




