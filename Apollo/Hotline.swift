//
//  Hotline.swift
//  Apollo
//
//  Created by Karolina Viera on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit


class Hotline: UIViewController {
    
    @IBAction func firstk(_ sender: UIButton) {makePhoneCall(phoneNumber: "18002738255")
    }
    
    @IBAction func nami(_ sender: UIButton) {makePhoneCall(phoneNumber: "18009506264")
    }
    
    func makePhoneCall(phoneNumber: String) {

        if let phoneURL = NSURL(string: ("tel://" + phoneNumber)) {

            let alert = UIAlertController(title: ("Call " + phoneNumber + "?"), message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Call", style: .default, handler: { (action) in
                UIApplication.shared.open(phoneURL as URL, options: [:], completionHandler: nil)
            }))

            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    }
    

  
    
import MessageUI

class TextingViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func textline(_ sender: Any) {
    if 
    (MFMessageComposeViewController.canSendText()) {
            let controller = MFMessageComposeViewController()
            controller.body = "Message Body"
            controller.recipients = ["4151231234"]
            controller.messageComposeDelegate = self
            self.present(controller, animated: true, completion: nil)
        }
    }

    func messageComposeViewController(_ controller: MFMessageComposeViewController!, didFinishWith result: MessageComposeResult) {
        self.dismiss(animated: true, completion: nil)
    }
}

//
//
