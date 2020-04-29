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
    var selectedLocation: CLLocationCoordinate2D?
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
            centerMap(location: location, zoom: 0.01)
            fetchSchoolOffers(location: location)
        } else {
            //Center Map on U.S.
            let USCenter = CLLocationCoordinate2D(latitude: 39.829219, longitude: -98.579394)
            centerMap(location: USCenter, zoom: 50)
            //Request Location
            locationManager?.requestWhenInUseAuthorization()
        }
        
        let toolbar = FUIMapToolbar(mapView: mapView)
        //toolbar.backgroundColorScheme = .darkBackground // defaults to `.lightBackground`
        let locationButton = FUIMapToolbar.UserLocationButton(mapView: self.mapView)
        locationButton.removeTarget(nil, action: nil, for: .allEvents)
        locationButton.addTarget(self, action: #selector(onLocationButtonPresed), for: .touchUpInside)
        let zoomExtentsButton = FUIMapToolbar.ZoomExtentButton(mapView: self.mapView)
        toolbar.items = [locationButton, zoomExtentsButton]
    }
    
    @objc private func onLocationButtonPresed(_ sender: UIButton) {
        print("Location Toolbar Button Pressed")
        if let location = getUserLocation() {
            centerMap(location: location, zoom: 0.01)
        } else {
            //TODO: Do something when no user location
            print("Ask for user location data")
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
                if newValue as? SchoolPin != nil {
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
        detailPanel.content.tableView.register(FUIMapDetailPanel.ButtonTableViewCell.self, forCellReuseIdentifier: FUIMapDetailPanel.ButtonTableViewCell.reuseIdentifier)
        detailPanel.content.tableView.estimatedRowHeight = 60
        detailPanel.content.tableView.rowHeight = UITableView.automaticDimension
        
        detailPanel.content.closeButton.didSelectHandler = { [unowned self] _ in
            self.dismissDetailPanel()
        }
        
        // Setup Search
        self.detailPanel.isSearchEnabled = true
        self.detailPanel.searchResults.tableView.dataSource = self
        self.detailPanel.searchResults.tableView.delegate = self
        self.detailPanel.searchResults.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier: FUIObjectTableViewCell.reuseIdentifier)
        self.detailPanel.searchResults.tableView.estimatedRowHeight = 60
        self.detailPanel.searchResults.tableView.rowHeight = UITableView.automaticDimension
        self.detailPanel.searchResults.searchBar.delegate = self
    }
    
    private func dismissDetailPanel() {
        self.selectedLocation = nil
        for annotation in self.mapView.selectedAnnotations {
            self.mapView.deselectAnnotation(annotation, animated: true)
        }
        self.clearMapOverlays()
        self.detailPanel.popChildViewController()
    }
    
    private func centerMap(location: CLLocationCoordinate2D, zoom: Double) {
        let span = MKCoordinateSpan(latitudeDelta: zoom, longitudeDelta: zoom)
        let region = MKCoordinateRegion(center: location, span: span)
        self.mapView.setRegion(region, animated: true)
    }
    
    private func clearMapOverlays() {
        for overlay in self.mapView.overlays {
            self.mapView.removeOverlay(overlay)
        }
    }
    
    private func setContentCell(cell: FUIObjectTableViewCell, detail: Detail) -> FUIObjectTableViewCell{
        cell.backgroundColor = UIColor.clear
        cell.headlineText = detail.title
        cell.subheadlineText = detail.subTitle
        cell.tintColor = .preferredFioriColor(forStyle: .map1)
        cell.detailImage = detail.image
        cell.isUserInteractionEnabled = false
        return cell
    }
    
    private func setSearchCell(cell: FUIObjectTableViewCell, searchResult: MKMapItem) -> FUIObjectTableViewCell {
        let placemark = searchResult.placemark
        cell.headlineText = searchResult.name
        cell.subheadlineText = placemark.title
        cell.isUserInteractionEnabled = true
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
        if self.userLocation != nil || self.searchPin != nil {
            details.append(Detail(title: "Directions", subTitle: "", image: UIImage(systemName: "car.fill")))
        }
        self.details = details
        
        detailPanel.content.tableView.reloadData()
    }
    
    private func setAddressPanel(_ annotation: MKAnnotation) {
        detailPanel.content.headlineText = "You are here!"
        if let title = annotation.title, let subtitle = annotation.subtitle {
            detailPanel.content.subheadlineText = title
            self.details = [
                Detail(title: subtitle ?? "Here",
                       subTitle: "Searching for resources near here",
                       image: UIImage(systemName: "questionmark.circle.fill"))
            ]
        } else {
            self.details = [Detail]()
        }
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
    
    private func getDirections(source: CLLocationCoordinate2D, destination: CLLocationCoordinate2D) {
        let request = MKDirections.Request()
        
        request.source = MKMapItem(placemark: MKPlacemark(coordinate: source, addressDictionary: nil))
        request.destination = MKMapItem(placemark: MKPlacemark(coordinate: destination, addressDictionary: nil))
        request.requestsAlternateRoutes = false
        request.transportType = .automobile

        let directions = MKDirections(request: request)

        directions.calculate { [unowned self] response, error in
            guard let unwrappedResponse = response else { return }
            self.clearMapOverlays()

            for route in unwrappedResponse.routes {
                self.mapView.addOverlay(route.polyline)
                let mapRect = route.polyline.boundingMapRect
                //Zoom out the map by 10%
                let adjustSize = mapRect.width * 0.1
                let biggerRect = MKMapRect(x: mapRect.origin.x - (adjustSize/2),
                                           y: mapRect.origin.y - (adjustSize/2),
                                           width: mapRect.width + adjustSize,
                                           height: mapRect.height + adjustSize)
                self.mapView.setVisibleMapRect(biggerRect, animated: true)
            }
            //TODO: Partially Dismiss Detail Panel
            //self.mapView.selectAnnotation(MKPointAnnotation(coordinate: self.searchPin!.coordinate), animated: true)
        }
    }
    
    //MARK: Actions
    
    private func onAddressSelect(_ mapItem: MKMapItem) {
        //Remove previous pin if it exists
        if let prevPin = searchPin {
            mapView.removeAnnotations([prevPin])
        }
        //Remove old SchoolPins. Will get new pins
        mapView.removeAnnotations(schoolPins)
        schoolPins = [SchoolPin]()
        //Place New AddressPin
        let annotation = MKPointAnnotation()
        annotation.coordinate = mapItem.placemark.coordinate
        annotation.title = mapItem.name
        annotation.subtitle = mapItem.placemark.title
        mapView.showAnnotations([annotation], animated: true)
        searchPin = annotation
        //Get new SchoolPins
        fetchSchoolOffers(location: mapItem.placemark.coordinate)
        
        self.detailPanel.searchResults.searchBar.endEditing(true)
        DispatchQueue.main.async {
            self.detailPanel.popChildViewController()
        }
    }
    
    @objc private func onDirectionsButton(sender: UIButton) {
        guard let destination = self.selectedLocation else {
            print("ERROR: No destination given")
            return
        }
        let source: CLLocationCoordinate2D
        if let searchLocation = self.searchPin?.coordinate {
            source = searchLocation
        } else if let userLocation = self.userLocation {
            source = userLocation
        } else {
            return
        }
        getDirections(source: source, destination: destination)
    }
    
    //MARK: Backend Calls
    private func fetchSchoolOffers(location: CLLocationCoordinate2D) {
        SVProgressHUD.show(withStatus: "Searching for resources")
        SchoolOfferManager.getSchoolPins(lat: location.latitude, long: location.longitude, dist: 150, callback: didFetchSchoolPins)
    }
    
    func didFetchSchoolPins(fetchedSchoolPins: [SchoolPin]?) {
        if let pins = fetchedSchoolPins {
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
            let detail = details[indexPath.row]
            if detail.title == "Directions" {
                let cell = tableView.dequeueReusableCell(withIdentifier: FUIMapDetailPanel.ButtonTableViewCell.reuseIdentifier, for: indexPath) as! FUIMapDetailPanel.ButtonTableViewCell
                cell.buttonHeadlineText = "Directions"
                cell.button.backgroundColor = UIColor.preferredFioriColor(forStyle: .map1)
                cell.button.addTarget(self, action: #selector(onDirectionsButton), for: .touchUpInside)
                return cell
            }
            let detailCell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
            return setContentCell(cell: detailCell, detail: detail)
        } else {
            let searchCell = tableView.dequeueReusableCell(withIdentifier: FUIObjectTableViewCell.reuseIdentifier, for: indexPath) as! FUIObjectTableViewCell
            let searchResult = searchResults[indexPath.row]
            return setSearchCell(cell: searchCell, searchResult: searchResult)
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == detailPanel.searchResults.tableView {
            let searchItem = searchResults[indexPath.row]
            onAddressSelect(searchItem)
        }
    }

}
extension MainVC: MKMapViewDelegate, FUIMKMapViewDelegate {
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        if let pin = view.annotation as? SchoolPin {
            self.centerMap(location: pin.coordinate, zoom: 0.01)
            setDetailPanel(school: pin.school, offers: pin.offers)
        } else if let annotation = view.annotation {
            self.centerMap(location: annotation.coordinate, zoom: 0.01)
            self.setAddressPanel(annotation)
        }
        selectedLocation = view.annotation?.coordinate
        DispatchQueue.main.async {
            self.detailPanel.pushChildViewController()
        }
    }
    
    func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
        let renderer = MKPolylineRenderer(polyline: overlay as! MKPolyline)
        renderer.strokeColor = UIColor.systemBlue
        return renderer
    }
    
}
extension MainVC: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print("Search button clicked")
        if let searchText = searchBar.searchTextField.text, searchText != "" {
            searchForAddreses(searchText)
        }
    }
    
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        searchBar.text = ""
//        searchBar.endEditing(true)
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
