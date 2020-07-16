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

class CounselingVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
   let locationManager = CLLocationManager()
   let regionInMeters: Double = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        checkLocationServices()

        
    }
    
    func setupLocationManager() {
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
            setupLocationManager()
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

} // class end


extension ViewController: CLLocationManagerDelegate {

func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
    let regionInMeters: Double = 10000
    guard let location = locations.last else { return }
    let center = CLLocationCoordinate2D(latitude: regionInMeters, longitude: regionInMeters)
    let region = MKCoordinateRegion.init(center: center, latitudinalMeters: regionInMeters, longitudinalMeters: regionInMeters)
    mapView.setRegion(region, animated: true)
}
}

func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    checkLocationAuthorization() }
