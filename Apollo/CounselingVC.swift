//
//  CounselingVC.swift
//  Apollo
//
//  Created by Joana Carvalho on 7/15/20.
//  Copyright © 2020 Joana Carvalho. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class CounselingVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionInMeters: Double = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkLocationServices()
        
    }
    
    func setUpLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
    }
    
    func centerViewOnUserLocation() {
        if let location = locationManager.location?.coordinate {
            let region = MKCoordinateRegion.init(center: location, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
            mapView.setRegion(region, animated: true)
        }
    }
    
    
    
    
    
    func checkLocationServices() {
        if CLLocationManager.locationServicesEnabled() {
            setUpLocationManager()
            checkLocationAuthorization()
        } else {
        
        }
    }
    
    func checkLocationAuthorization() {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            centerViewOnUserLocation()
            locationManager.startUpdatingLocation()
            break
        case .denied:
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            break
        case .authorizedAlways:
            break
        }
    }
    
    
    
    @IBAction func CSMI(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://cimhs.com")! as URL, options: [:], completionHandler:nil)
        
    }
    
    
    @IBAction func second(_ sender: UIButton) { UIApplication.shared.open(URL(string:"https://www.7cups.com")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func third(_ sender: UIButton) { UIApplication.shared.open(URL(string:"BetterHelp.com")! as URL, options: [:], completionHandler: nil)
    }
    
  

} // class end


extension CounselingVC: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }
        let center = CLLocationCoordinate2D(latitude: regionInMeters, longitude: regionInMeters)
        let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
        mapView.setRegion(region, animated: true)
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }


}
