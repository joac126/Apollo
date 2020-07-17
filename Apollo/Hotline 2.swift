//
//  Hotline.swift
//  Apollo
//
//  Created by Karolina Viera on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit

class Hotline: UIViewController {
    
    
    @IBAction func suic(_ sender: UIButton) {
    }
}

private func callNumber(phoneNumber:String) {
 
    
    
  if let phoneCallURL = URL(string: "tel://18002738255)") {
    let application:UIApplication = UIApplication.shared
    if (application.canOpenURL(phoneCallURL)) {
        application.open(phoneCallURL, options: [:], completionHandler: nil)
    }
  }
}


