//
//  Hotline.swift
//  Apollo
//
//  Created by Karolina Viera on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit

class Hotline: UIViewController {

    @IBAction func sp(_ sender: UIButton) {guard let number = URL(string: "tel://" + "18002738255") else { return }
                UIApplication.shared.open(number)
            }
            override func viewDidLoad() {
                super.viewDidLoad()
    }
    
    @IBAction func nami(_ sender: UIButton) {guard let number = URL(string: "tel://" + "18009506264") else { return }
        UIApplication.shared.open(number)
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
