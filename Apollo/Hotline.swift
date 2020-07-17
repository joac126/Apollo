//
//  Hotline.swift
//  Apollo
//
//  Created by Karolina Viera on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit

class Hotline: UIViewController {
    
    @IBAction func suicHot(_ sender: UIButton) {
        guard let number = URL(string: "tel://" + "9122471151") else { return }
        UIApplication.shared.open(number)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
}





