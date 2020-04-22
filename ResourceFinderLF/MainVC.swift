//
//  MainVC.swift
//  ResourceFinderLF
//
//  Created by Lukas on 2020-04-21.
//  Copyright © 2020 SAP. All rights reserved.
//

import UIKit
import MapKit
import SAPFiori
import SAPOData

struct Detail {
    var title: String
    var subTitle: String
    var image: UIImage?
}

class MainVC: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager: CLLocationManager?
    var userLocation: CLLocationCoordinate2D?
    var detailPanel: FUIMapDetailPanel!
    
    var details: [Detail] = [
        Detail(title: "How", subTitle: "Pickup", image: UIImage(systemName: "questionmark.circle.fill")),
        Detail(title: "Who", subTitle: "Students and Siblings under age 18", image: UIImage(systemName: "person.circle.fill")),
        Detail(title: "Breakfast (M, Tu, W, Th, F)", subTitle: "11:00 AM - 1:00 PM", image: UIImage(systemName: "clock.fill")),
        Detail(title: "Lunch (M, Tu, W, Th, F)", subTitle: "11:00 AM - 1:00 PM", image: UIImage(systemName: "clock.fill")),
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        //TODO: Add Search Bar
        //TODO: Add Directions to Detail with FioriButton
        //TODO: Get real data from backend
        //TODO: Add modal for first time use + get location
        //TODO: Timeline cells?
        //TODO: Fullscreen map
    }
    
    // Ensures that the detail panel is present whenever the map view appears.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        detailPanel.presentContainer()
    }

    // Dismisses the detail panel whenever the map view disappears.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        presentedViewController?.dismiss(animated: false, completion: nil)
    }
    
    //MARK: Private Methods
    
    private func setupView() {
        mapView.register(FioriMarker.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        setupDetailPanel()
        
        //Check if we are allowed to have the user's location
        if let location = getUserLocation() {
            self.userLocation = location
            centerMap(location: location, zoom: 0.005)
        } else {
            //Center Map on U.S.
            let USCenter = CLLocationCoordinate2D(latitude: 39.829219, longitude: -98.579394)
            centerMap(location: USCenter, zoom: 50)
            //Request Location
            locationManager?.requestWhenInUseAuthorization()
        }
        
        let schoolLocation = CLLocationCoordinate2D(latitude: 43.204192, longitude: -77.593500)
        placePin(title: "BROOKVIEW SCHOOL", location: schoolLocation)
    }
    
    //Return User Location if enabled
    private func getUserLocation() -> CLLocationCoordinate2D? {
        if CLLocationManager.locationServicesEnabled(),
            CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            if let userLocation = locationManager?.location?.coordinate {
                return userLocation
            }
        }
        return nil
    }
    
    //Place annotation pin at location
    private func placePin(title: String, location: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = title
        self.mapView.addAnnotation(annotation)
    }
    
    private class FioriMarker: FUIMarkerAnnotationView {

        // Override the annotation property to customize it whenever it is set.
        override var annotation: MKAnnotation? {
            willSet {
                markerTintColor = .preferredFioriColor(forStyle: .map1)
                glyphImage = FUIIconLibrary.map.marker.cafe.withRenderingMode(.alwaysTemplate)
                //glyphImage = FUIIconLibrary.map.marker.venue.withRenderingMode(.alwaysTemplate)
                displayPriority = .defaultHigh
            }
        }
    }
    
    private func setupDetailPanel() {
        mapView.delegate = self
        detailPanel = FUIMapDetailPanel(parentViewController: self, mapView: mapView)

        // Configure the table view in the detail panel to use a custom cell type for map details.
        detailPanel.content.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier:  FUIObjectTableViewCell.reuseIdentifier)

        // This view controller will supply the data for the detail panel's table view.
        detailPanel.content.tableView.dataSource = self
        detailPanel.content.tableView.delegate = self
        detailPanel.content.headlineText = "BROOKVIEW SCHOOL"
        detailPanel.content.subheadlineText = "300 BROOKVIEW DR, ROCHESTER, NY"
        detailPanel.isSearchEnabled = false
    }
    
    private func centerMap(location: CLLocationCoordinate2D, zoom: Double) {
        let span = MKCoordinateSpan(latitudeDelta: zoom, longitudeDelta: zoom)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapView.setRegion(region, animated: true)
    }
    
    //MARK: Backend Calls
    private func fetchSchoolOfferings() {
        //https://sap4good-dev-sap4kids-srv.cfapps.us10.hana.ondemand.com/map/SchoolOffers(LATITUDE=37.703,LONGITUDE=-85.213,DISTANCEFORSEARCH=500,ELIGIBILITYCAT=%27%27%2736a00731-7f07-42a8-a141-f4303d41a10b%27%27%27,ASSISTSUBTYPE=%27%27%2703487ac3-e0db-43af-852b-2ebf198e3a0f%27%27%27)/Set
        //SchoolOfferingAssistance
        //let query = DataQuery()
    }
    

}
extension MainVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        detailPanel.pushChildViewController()
    }

    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        detailPanel.popChildViewController()
    }
}
extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let detailCell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
        
        let detail = details[indexPath.row]
        
        detailCell.backgroundColor = UIColor.clear
        detailCell.headlineText = detail.title
        detailCell.subheadlineText = detail.subTitle
        detailCell.tintColor = .preferredFioriColor(forStyle: .map1)
        detailCell.detailImage = detail.image
        
        return detailCell
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
