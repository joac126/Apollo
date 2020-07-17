//
//  Hotline.swift
//  Apollo
//
//  Created by Karolina Viera on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit

class Hotline: UIViewController {

    @IBAction func sui(_ sender: Any) {

    
    
func dialNumber(number : String) {

 if let url = URL(string: "tel://\(number)"),
   UIApplication.shared.canOpenURL(url) {
      if #available(iOS 10, *) {
        UIApplication.shared.open(url, options: [:], completionHandler:nil)
       } else {
           UIApplication.shared.openURL(url)
       }
   } else {
            // add error message here
   }

        }

dialNumber(number: "+2025794610")


//func makeAPhoneCall()  {
//    let url: NSURL = URL(string: "TEL://1234567890")! as NSURL
//    UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
//}
//// function call: [Used anywhere in your code]
//        self.makeAPhoneCall() {
//
//        }
//
//}
//}

    }
}
