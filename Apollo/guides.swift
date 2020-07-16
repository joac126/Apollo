//
//  guides.swift
//  Apollo
//
//  Created by Karolina Viera on 7/16/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit

class guides: UIViewController {

    
    @IBOutlet weak var anx: UIImageView!
    
    @IBAction func anxie(_ sender: UIButton) {
        anx.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anx.isHidden = true
    
        // Do any additional setup after loading the view.
    }
    


}


    
   
       // when button tapped this code
