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
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        getUserLocation()
        
        mapView.register(FioriMarker.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        placePin()
        
        setupDetailPanel()
        
        //TODO: Center map over america
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
    
    private func placePin() {
        let location = CLLocationCoordinate2D(latitude: 43.204192, longitude: -77.593500)
        
        //Place Annotation
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "BROOKVIEW SCHOOL"
        self.mapView.addAnnotation(annotation)
        
        //Center Map
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapView.setRegion(region, animated: true)
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
        //(FUIMapDetailTagObjectTableViewCell.self, forCellReuseIdentifier: FUIMapDetailTagObjectTableViewCell.reuseIdentifier)

        // This view controller will supply the data for the detail panel's table view.
        detailPanel.content.tableView.dataSource = self
        detailPanel.content.tableView.delegate = self
        detailPanel.content.headlineText = "BROOKVIEW SCHOOL"
        detailPanel.content.subheadlineText = "300 BROOKVIEW DR, ROCHESTER, NY"
        //let view = UIView()
        //view.backgroundColor = UIColor.systemRed
        //view.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        //detailPanel.content.view = view
        detailPanel.isSearchEnabled = false
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
        
        //detailCell.tags = ["Germany", "Europe"]
        detailCell.headlineText = detail.title
        detailCell.subheadlineText = detail.subTitle
        //detailCell.footnoteText = "footnote"
        //detailCell.substatusText = "substatus"
        //let color = FUIColorStyle.map1
            //.preferredFioriColor(forStyle: .map1)
        detailCell.tintColor = .preferredFioriColor(forStyle: .map1)
        detailCell.detailImage = detail.image

        // Fiori includes a library of icons, such as a clock indicator.
        //detailCell.statusImage = FUIIconLibrary.indicator.clock.withRenderingMode(.alwaysTemplate)

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
