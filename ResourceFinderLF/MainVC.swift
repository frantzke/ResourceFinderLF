//
//  MainVC.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-21.
//  Copyright © 2020 SAP. All rights reserved.
//

import UIKit
import MapKit

class MainVC: UIViewController {
    
    var locationManager: CLLocationManager?
    var userLocation: CLLocationCoordinate2D?
    
    //MARK: Properties
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        getUserLocation()
        
        //TODO: Center map over america
    }
    
    private func getUserLocation() {
        if CLLocationManager.locationServicesEnabled(), CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            //Get Current Location
            mapView.showsUserLocation = true
            self.userLocation = mapView.userLocation.location?.coordinate
        } else {
            //Request Location
            locationManager?.requestWhenInUseAuthorization()
        }
    }
    

}
extension MainVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            mapView.showsUserLocation = true
        } else {
            print("Failed to get user location")
        }
    }
}
