//
//  FourthViewController.swift
//  Apollo
//
//  Created by Joana Carvalho on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//








import UIKit

class FourthViewController: UIViewController {
    
    @IBAction func first(_ sender: UIButton) { UIApplication.shared.open(URL(string:"https://www.crisistextline.org/become-a-volunteer/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func second(_ sender: Any) { UIApplication.shared.open(URL(string:"https://www.nami.org/Get-Involved/Become-a-Fundraiser")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func third(_ sender: UIButton) { UIApplication.shared.open(URL(string:"https://save.org/get-involved/volunteer/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func fourth(_ sender: UIButton) { UIApplication.shared.open(URL(string:"https://www.7cups.com")! as URL, options: [:], completionHandler: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
