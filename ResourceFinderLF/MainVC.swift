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
    
//    var isPresentingDetail: Bool = false
    var details: [Detail] = [
        Detail(title: "How", subTitle: "Pickup", image: UIImage(systemName: "questionmark.circle.fill")),
        Detail(title: "Who", subTitle: "Students and Siblings under age 18", image: UIImage(systemName: "person.circle.fill")),
        Detail(title: "Breakfast (M, Tu, W, Th, F)", subTitle: "11:00 AM - 1:00 PM", image: UIImage(systemName: "clock.fill")),
        Detail(title: "Lunch (M, Tu, W, Th, F)", subTitle: "11:00 AM - 1:00 PM", image: UIImage(systemName: "clock.fill"))
    ]
    //var schoolOffers: [SchoolOffer]?
    var offerPins = [OfferPin]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        //TODO: Add Search Bar
        //TODO: Add Directions to Detail with FioriButton
        //TODO: Get real data from backend
        //TODO: Add modal for first time use + get location
        //TODO: Timeline cells?
        //TODO: Fullscreen map
        //TODO: Find Relevant results. (Future or current)
        //TODO: Indicate loading results
        //TODO: Show Map Settings?
        //TODO: Zoom out map when placing pins
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
        mapView.delegate = self
        mapView.register(FioriMarker.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        setupDetailPanel()
        
        //Check if we are allowed to have the user's location
        if let location = getUserLocation() {
            self.userLocation = location
            centerMap(location: location, zoom: 0.005)
            fetchSchoolOffers(location: location)
        } else {
            //Center Map on U.S.
            let USCenter = CLLocationCoordinate2D(latitude: 39.829219, longitude: -98.579394)
            centerMap(location: USCenter, zoom: 50)
            //Request Location
            locationManager?.requestWhenInUseAuthorization()
        }
        
//        let schoolLocation = CLLocationCoordinate2D(latitude: 43.204192, longitude: -77.593500)
//        placePin(title: "BROOKVIEW SCHOOL", location: schoolLocation)
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
//    private func placePin(title: String, location: CLLocationCoordinate2D) -> MKPointAnnotation {
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location
//        annotation.title = title
//        //self.mapView.addAnnotation(annotation)
//        return annotation
//    }
    
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
        detailPanel = FUIMapDetailPanel(parentViewController: self, mapView: mapView)

        // Setup Content
        detailPanel.content.tableView.dataSource = self
        detailPanel.content.tableView.delegate = self
        detailPanel.content.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier:  FUIObjectTableViewCell.reuseIdentifier)
        detailPanel.searchResults.tableView.estimatedRowHeight = 60
        detailPanel.searchResults.tableView.rowHeight = UITableView.automaticDimension
        //detailPanel.content.headlineText = "BROOKVIEW SCHOOL"
        //detailPanel.content.subheadlineText = "300 BROOKVIEW DR, ROCHESTER, NY"
        
        // Setup Search
        self.detailPanel.isSearchEnabled = true
        self.detailPanel.searchResults.tableView.dataSource = self
        self.detailPanel.searchResults.tableView.delegate = self
        self.detailPanel.searchResults.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier: FUIObjectTableViewCell.reuseIdentifier)
        self.detailPanel.searchResults.tableView.estimatedRowHeight = 60
        self.detailPanel.searchResults.tableView.rowHeight = UITableView.automaticDimension
        self.detailPanel.searchResults.searchBar.delegate = self
    }
    
    private func centerMap(location: CLLocationCoordinate2D, zoom: Double) {
        let span = MKCoordinateSpan(latitudeDelta: zoom, longitudeDelta: zoom)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapView.setRegion(region, animated: true)
    }
    
    private func setContentCell(cell: FUIObjectTableViewCell, detail: Detail) -> FUIObjectTableViewCell{
        cell.backgroundColor = UIColor.clear
        cell.headlineText = detail.title
        cell.subheadlineText = detail.subTitle
        cell.tintColor = .preferredFioriColor(forStyle: .map1)
        cell.detailImage = detail.image
        return cell
    }
    
//    private func setSearchCell(cell: FUIObjectTableViewCell, searchResult: ) {
//
//    }
    
    private func setDetailPanel(offer: SchoolOffer) {
        detailPanel.content.headlineText = offer.name
        detailPanel.content.subheadlineText = offer.address
        
        //TODO: Multiple Times
        let details = [
            Detail(title: "How", subTitle: offer.how, image: UIImage(systemName: "questionmark.circle.fill")),
            Detail(title: "Who", subTitle: offer.who, image: UIImage(systemName: "person.circle.fill")),
            Detail(title: offer.when, subTitle: offer.time, image: UIImage(systemName: "clock.fill")),
        ]
        //Detail(title: "Lunch (M, Tu, W, Th, F)", subTitle: "11:00 AM - 1:00 PM", image: UIImage(systemName: "clock.fill"))
        self.details = details
        detailPanel.content.tableView.reloadData()
    }
    
    //MARK: Backend Calls
    private func fetchSchoolOffers(location: CLLocationCoordinate2D) {
        SchoolOfferManager.getSchoolOffers(lat: location.latitude, long: location.longitude, dist: 200, callback: didFetchSchoolOffers)
    }
    
    func didFetchSchoolOffers(fetchedSchoolOffers: [SchoolOffer]?) {
        if let offers = fetchedSchoolOffers {
            //self.schoolOffers = offers
            //TODO: Annotations with the same coordinates
            for offer in offers {
                let offerPin = OfferPin(title: offer.name, schoolOffer: offer, coordinate: CLLocationCoordinate2D(latitude: offer.lat, longitude: offer.long))
                offerPins.append(offerPin)
            }
        }
        self.mapView.showAnnotations(offerPins, animated: true)
    }
    
}
extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.detailPanel.searchResults.tableView {
            return 0
        } else {
            return details.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == self.detailPanel.content.tableView {
            let detailCell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
            let detail = details[indexPath.row]
            return setContentCell(cell: detailCell, detail: detail)
        } else {
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

}
extension MainVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let annotation = view.annotation as? OfferPin {
            setDetailPanel(offer: annotation.schoolOffer)
        }
        detailPanel.pushChildViewController()
    }

    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        detailPanel.popChildViewController()
    }
}
extension MainVC: UISearchBarDelegate {
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print("Did Begin Editing")
    }

    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        print("Did End Editing")
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Did change text")
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
