//
//  CounselingVC.swift
//  Apollo
//
//  Created by Joana Carvalho on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit
import MapKit
class CounselingVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    //memorial health lat and long
    // 32.0303° N, 81.0888° W
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 32.0303, longitude: -81.0888)
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
        
        
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func CSMI(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://cimhs.com")! as URL, options: [:], completionHandler:nil)
        
    }
    
    
    @IBAction func second(_ sender: UIButton) { UIApplication.shared.open(URL(string:"https://www.7cups.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func third(_ sender: UIButton) { UIApplication.shared.open(URL(string:"BetterHelp.com")! as URL, options: [:], completionHandler: nil)
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
