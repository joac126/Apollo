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
    
    
    @IBOutlet weak var dep: UIImageView!
    
    @IBAction func depr(_ sender: UIButton) {
        dep.isHidden = false}
    
    
    @IBOutlet weak var las: UIImageView!
    
    @IBAction func last(_ sender: UIButton) {
        las.isHidden = false}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        anx.isHidden = true
        dep.isHidden = true
        las.isHidden = true
    
        // Do any additional setup after loading the view.
    }
    


}


    
   
       // when button tapped this code
