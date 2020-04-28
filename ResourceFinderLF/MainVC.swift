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
import SVProgressHUD

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
    
    var details = [Detail]()
    var schoolPins = [SchoolPin]()
    var searchResults = [MKMapItem]()
    var searchPin: MKPointAnnotation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
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
    
    private class FioriMarker: FUIMarkerAnnotationView {

        // Override the annotation property to customize it whenever it is set.
        override var annotation: MKAnnotation? {
            willSet {
                if let schoolPin = newValue as? SchoolPin {
                    markerTintColor = .preferredFioriColor(forStyle: .map1)
                    glyphImage = FUIIconLibrary.map.marker.cafe.withRenderingMode(.alwaysTemplate)
                } else {
                    markerTintColor = .preferredFioriColor(forStyle: .positive)
                    glyphImage = FUIIconLibrary.system.me.withRenderingMode(.alwaysTemplate)
                }
                displayPriority = .required
            }
        }
    }
    
    private func setupDetailPanel() {
        detailPanel = FUIMapDetailPanel(parentViewController: self, mapView: mapView)

        // Setup Content
        detailPanel.content.tableView.dataSource = self
        detailPanel.content.tableView.delegate = self
        detailPanel.content.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier:  FUIObjectTableViewCell.reuseIdentifier)
        detailPanel.content.tableView.estimatedRowHeight = 60
        detailPanel.content.tableView.rowHeight = UITableView.automaticDimension
        
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
    
    private func setSearchCell(cell: FUIObjectTableViewCell, searchResult: MKMapItem) -> FUIObjectTableViewCell {
        let placemark = searchResult.placemark
        cell.headlineText = searchResult.name
        cell.subheadlineText = placemark.title
        return cell
    }
    
    private func setDetailPanel(school: School, offers: [Offer]) {
        detailPanel.content.headlineText = school.name
        detailPanel.content.subheadlineText = school.address
        
        var details = [
            Detail(title: "How", subTitle: school.how, image: UIImage(systemName: "questionmark.circle.fill")),
            Detail(title: "Who", subTitle: school.who, image: UIImage(systemName: "person.circle.fill")),
        ]
        for offer in offers {
            details.append(Detail(title: offer.when, subTitle: offer.time, image: UIImage(systemName: "clock.fill")))
        }
        self.details = details
        
        detailPanel.content.tableView.reloadData()
    }
    
    private func searchForAddreses(_ searchText: String) {
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchText
        searchRequest.region = mapView.region
        
        let search = MKLocalSearch(request: searchRequest)
        search.start { response, error in
            guard let response = response else {
                print("Error: \(error?.localizedDescription ?? "Unknown error").")
                return
            }
            
            print("Found \(response.mapItems.count) results")
            self.searchResults = response.mapItems
            self.detailPanel.searchResults.tableView.reloadData()
        }
    }
    
    //MARK: Backend Calls
    private func fetchSchoolOffers(location: CLLocationCoordinate2D) {
        SVProgressHUD.show(withStatus: "Searching for resources")
        SchoolOfferManager.getSchoolPins(lat: location.latitude, long: location.longitude, dist: 150, callback: didFetchSchoolPins)
    }
    
    func didFetchSchoolPins(fetchedSchoolPins: [SchoolPin]?) {
        if let pins = fetchedSchoolPins {
            //self.schoolOffers = offers
            //TODO: Annotations with the same coordinates
            //for pin in pins {
                //let offerPin = OfferPin(title: offer.name, schoolOffer: offer, coordinate: CLLocationCoordinate2D(latitude: offer.lat, longitude: offer.long))
                //offerPins.append(offerPin)
            //}
            self.schoolPins = pins
            self.mapView.showAnnotations(pins, animated: true)
            SVProgressHUD.showSuccess(withStatus: "Found \(pins.count) resources!")
        }
        
    }
    
}
extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.detailPanel.searchResults.tableView {
            return searchResults.count
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
            let searchCell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
            let searchResult = searchResults[indexPath.row]
            return setSearchCell(cell: searchCell, searchResult: searchResult)
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Did select row at: \(indexPath.row)")
        //Place search pin
        let searchItem = searchResults[indexPath.row]
        let annotation = MKPointAnnotation()
        annotation.coordinate = searchItem.placemark.coordinate
        annotation.title = searchItem.name
        if let prevPin = searchPin {
            mapView.removeAnnotations([prevPin])
        }
        mapView.removeAnnotations(schoolPins)
        searchPin = annotation
        schoolPins = [SchoolPin]()
        mapView.showAnnotations([annotation], animated: true)
        fetchSchoolOffers(location: searchItem.placemark.coordinate)
        self.detailPanel.searchResults.searchBar.endEditing(true)
        DispatchQueue.main.async {
            self.detailPanel.popChildViewController()
        }
    }

}
extension MainVC: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let pin = view.annotation as? SchoolPin {
            setDetailPanel(school: pin.school, offers: pin.offers)
        }
        DispatchQueue.main.async {
            self.detailPanel.pushChildViewController()
        }
    }

    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
//        DispatchQueue.main.async {
//            self.detailPanel.popChildViewController()
//        }
    }
}
extension MainVC: UISearchBarDelegate {
    
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        print("Did Begin Editing")
//    }

//    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
//        print("Did End Editing")
//        if let searchText = searchBar.searchTextField.text, searchText != "" {
//            searchForAddreses(searchText)
//        }
//    }

//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        print("Did change text")
//    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("Search button clicked")
        if let searchText = searchBar.searchTextField.text, searchText != "" {
            searchForAddreses(searchText)
        }
    }
    
//    func searchBarResultsListButtonClicked(_ searchBar: UISearchBar) {
//        print("list button clicked")
//    }
    
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
