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
import SPPermissions

struct Detail {
    var title: String
    var subTitle: String
    var image: UIImage?
    var color: UIColor?
}

class MainVC: FUIMKMapFloorplanViewController {
    
    //MARK: Properties
    //@IBOutlet weak var mapView: MKMapView!
    
    var locationManager: CLLocationManager?
    var userLocation: CLLocationCoordinate2D?
    var selectedLocation: MKAnnotation?
    //var detailPanel: FUIMapDetailPanel!
    
    var details = [Detail]()
    var schoolPins = [SchoolPin]()
    var searchResults = [MKMapItem]()
    var searchPin: MKPointAnnotation?
    var isNotDetermined = false
    
    var searchIsDisplayed = true
    var searchViewFrame: CGRect?
    var searchView: UIView?
    
    //MARK: Initialization
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    // Ensures that the detail panel is present whenever the map view appears.
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //detailPanel.presentContainer()
        if isNotDetermined {
            showPermissions()
        }
    }

    // Dismisses the detail panel whenever the map view disappears.
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        //presentedViewController?.dismiss(animated: false, completion: nil)
//    }
    
    private func setupView() {
        mapView.delegate = self
        mapView.register(FioriMarker.self, forAnnotationViewWithReuseIdentifier: MKMapViewDefaultAnnotationViewReuseIdentifier)
        //Center Map on U.S.
        let USCenter = CLLocationCoordinate2D(latitude: 39.829219, longitude: -98.579394)
        centerMap(location: USCenter, zoom: 50)
        
        locationManager = CLLocationManager()
        locationManager?.delegate = self
        
        setupDetailPanel()
        setupToolbar()
        
        //setupLegend
        //var legendItems = [FUIMapLegendItem]()
        var availableItem = FUIMapLegendItem(title: "Available Today")
        availableItem.backgroundColor = .preferredFioriColor(forStyle: .positive)
//        let itemImage = FUIAttributedImage(image: FUIIconLibrary.map.marker.cafe.withRenderingMode(.alwaysTemplate))
//        itemImage.tintColor = .preferredFioriColor(forStyle: .tintColorLight)
        availableItem.icon = FUIMapLegendIcon(glyphImage: "")
        
        var closedItem = FUIMapLegendItem(title: "Not Available Today")
        closedItem.backgroundColor = .preferredFioriColor(forStyle: .negative)
        closedItem.icon = FUIMapLegendIcon(glyphImage: "")

        let legendTextView = UITextView()
        legendTextView.text = "Legend"
        legend.headerTextView.text = "Legend"
        legend.items = [availableItem, closedItem]
    }
    
    private func setupDetailPanel() {
        //detailPanel = FUIMapDetailPanel(parentViewController: self, mapView: mapView)
        detailPanel.isApplyingBlurBackground = true
        // Setup Content
        detailPanel.content.closeButton.didSelectHandler = { [unowned self] _ in
            self.dismissDetailPanel()
        }
        detailPanel.content.tableView.dataSource = self
        detailPanel.content.tableView.delegate = self
        detailPanel.content.tableView.register(FUIObjectTableViewCell.self, forCellReuseIdentifier:  FUIObjectTableViewCell.reuseIdentifier)
        detailPanel.content.tableView.register(FUIMapDetailPanel.ButtonTableViewCell.self, forCellReuseIdentifier: FUIMapDetailPanel.ButtonTableViewCell.reuseIdentifier)
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
        self.detailPanel.searchResults.searchBar.placeholder = "Search for a place or address"
    }
    
    private func setupToolbar() {
        var toolbarItems = [FUIMapToolbarButton]()
        //Custom User Location button
        let locationButton = FUIMapToolbar.UserLocationButton(mapView: self.mapView)
        locationButton.removeTarget(nil, action: nil, for: .allEvents)
        locationButton.addTarget(self, action: #selector(onLocationButtonPresed), for: .touchUpInside)
        toolbarItems.append(locationButton)

        let zoomExtentsButton = FUIMapToolbar.ZoomExtentButton(mapView: self.mapView)
        toolbarItems.append(zoomExtentsButton)
        
        
        //Show legend button
        toolbarItems.append(toolbar.items[3])
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            //If iPad show hide button
            //Get hide button
            let hideButton = toolbar.items[2]
            toolbarItems.append(hideButton)
        }
        
        toolbar.items = toolbarItems
    }
    
    //Customize map Annotation Markers
    private class FioriMarker: FUIMarkerAnnotationView {
        override var annotation: MKAnnotation? {
            willSet {
                if let schoolPin = newValue as? SchoolPin {
                    markerTintColor = schoolPin.markerTintColor
                    glyphImage = FUIIconLibrary.map.marker.cafe.withRenderingMode(.alwaysTemplate)
                } else {
                    markerTintColor = UIColor.systemBlue
                    glyphImage = FUIIconLibrary.system.me.withRenderingMode(.alwaysTemplate)
                }
                displayPriority = .required
            }
        }
    }
    
    //MARK: MapView Methods
    
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
    
    //MARK: DetailPanel Methods
    
    private func dismissDetailPanel() {
        self.selectedLocation = nil
        for annotation in self.mapView.selectedAnnotations {
            self.mapView.deselectAnnotation(annotation, animated: true)
        }
        self.clearMapOverlays()
        self.detailPanel.popChildViewController()
    }
    
    private func setDetailPanel(school: School, offers: [Offer]) {
        detailPanel.content.headlineText = school.name
        detailPanel.content.subheadlineText = school.address
        var details = [
            Detail(title: "How", subTitle: school.how, image: UIImage(systemName: "questionmark.circle.fill")),
            Detail(title: "Who", subTitle: school.who, image: UIImage(systemName: "person.circle.fill")),
            Detail(title: "From", subTitle: school.datesInterval, image: UIImage(systemName: "clock.fill")),
        ]
        let foodIcon = UIImage(named: "food-icon")
        let sortedOffers = offers.sorted(by: { $0.sortOrder < $1.sortOrder })
        for offer in sortedOffers {
            let detail = Detail(
                    title: offer.when,
                    subTitle: offer.time,
                    image: foodIcon,
                    color: offer.isOfferExpired ? .preferredFioriColor(forStyle: .negative) : .preferredFioriColor(forStyle: .positive))
            details.append(detail)
        }
        //details.append(Detail(title: "Fastest Route", subTitle: ""))
        details.append(Detail(title: "Directions", subTitle: ""))
        self.details = details
        
        detailPanel.content.tableView.reloadData()
    }
    
    private func setAddressPanel(_ annotation: MKAnnotation) {
        detailPanel.content.headlineText = "You are here!"
        if let title = annotation.title, let subtitle = annotation.subtitle {
            detailPanel.content.subheadlineText = title
            self.details = [
                Detail(title: subtitle ?? "Here",
                       subTitle: "Showing resources near here",
                       image: UIImage(systemName: "questionmark.circle.fill"))
            ]
        } else {
            self.details = [Detail]()
        }
        detailPanel.content.tableView.reloadData()
    }
    
    //MARK: Private Methods
    
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
    
    private func showPermissions() {
        let controller = SPPermissions.dialog([.locationWhenInUse])
        // Overide texts in controller
        controller.headerText = "Permissions"
        controller.titleText = "Enable Location"
        controller.footerText = "Location services will make it easier to find your nearest resources"
        controller.dataSource = self
        controller.present(on: detailPanel.searchResults)
    }
    
    private func searchForAddreses(_ searchText: String) {
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchText
        searchRequest.region = mapView.region
        SVProgressHUD.show()
        let search = MKLocalSearch(request: searchRequest)
        search.start { response, error in
            guard let response = response else {
                //No MapItems found
                print("Error: \(error?.localizedDescription ?? "Unknown error").")
                SVProgressHUD.showInfo(withStatus: "No results found")
                return
            }
            SVProgressHUD.dismiss()
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
        SVProgressHUD.show(withStatus: "Finding Directions")
        directions.calculate { [unowned self] response, error in
            guard let unwrappedResponse = response else {
                SVProgressHUD.showError(withStatus: "Couldn't find directions")
                return
            }
            self.clearMapOverlays()
            
            if unwrappedResponse.routes.count == 0 {
                SVProgressHUD.showInfo(withStatus: "No directions found")
            }

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
            SVProgressHUD.dismiss()
            
            //Pop child controller back after a delay
            //TODO: Come up with better soltion. -> Partially Dismiss Detail Panel
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.detailPanel.pushChildViewController(completion: {
                    print("DID PUSH CHILDVIEWCONTROLLER")
                })
            }
        }
    }
    
    //MARK: Actions
    
//    @objc private func onClearButtonPressed(_ sender: UIButton) {
//        for view in detailPanel.passThroughViews {
//            if searchIsDisplayed {
//                searchIsDisplayed = false
//                searchView = view
//                searchViewFrame = view.frame
//                let orginalTransform = view.transform
//                let distance = view.frame.width + view.frame.origin.x
//                let translatedTransform = orginalTransform.translatedBy(x: -distance, y: 0.0)
//                let options: UIView.AnimationOptions = [.curveEaseOut]
//                UIView.animate(withDuration: 0.5, delay: 0.0, options: options, animations: {
//                    view.transform = translatedTransform
//                }, completion: { completed in
//                    view.removeFromSuperview()
//                })
//            } else {
//                let addView = searchView!
//                self.view.addSubview(addView)
//                addView.frame = searchViewFrame!
//                let orginalTransform = addView.transform
//                let distance = addView.frame.width + addView.frame.origin.x
//                let translatedTransform = orginalTransform.translatedBy(x: distance, y: 0.0)
//                let options: UIView.AnimationOptions = [.curveEaseOut]
//                UIView.animate(withDuration: 0.5, delay: 0.0, options: options, animations: {
//                    view.transform = translatedTransform
//                }, completion: { completed in
//                    view.frame = self.searchViewFrame!
//                    self.view.addSubview(view)
//                    print("added back?")
//                })
//            }
//        }
//    }
    
    @objc private func onLocationButtonPresed(_ sender: UIButton) {
        if let searchLocation = self.searchPin?.coordinate {
            centerMap(location: searchLocation, zoom: 0.01)
        } else if let location = getUserLocation() {
            centerMap(location: location, zoom: 0.01)
        } else {
            showPermissions()
        }
    }
    
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
        DispatchQueue.main.async {
            self.detailPanel.popChildViewController( completion: {
                print("DID POP CHILDVIEWCONTROLLER")
            })
        }
        getDirections(source: source, destination: destination.coordinate)
    }
    
    @objc private func onNavigateButton(_ sender: UIButton) {
        guard let destination = self.selectedLocation else {
            print("ERROR: No destination given")
            return
        }
        let launchOptions = [
          MKLaunchOptionsDirectionsModeKey: MKLaunchOptionsDirectionsModeDriving
        ]
        
        let destinationItem = MKMapItem(placemark: MKPlacemark(coordinate: destination.coordinate))
        destinationItem.name = destination.title ?? ""
        
        if let searchLocation = self.searchPin {
            let sourceItem = MKMapItem(placemark: MKPlacemark(coordinate: searchLocation.coordinate))
            sourceItem.name = searchLocation.title
            MKMapItem.openMaps(with: [sourceItem, destinationItem], launchOptions: launchOptions)
        } else {
            destinationItem.openInMaps(launchOptions: launchOptions)
        }
    }
    
    //MARK: Backend Calls
    
    private func fetchSchoolOffers(location: CLLocationCoordinate2D) {
        SVProgressHUD.show(withStatus: "Searching for resources")
        SchoolOfferManager.getSchoolPins(lat: location.latitude, long: location.longitude, dist: 150, callback: didFetchSchoolPins)
    }
    
    func didFetchSchoolPins(fetchedSchoolPins: [SchoolPin]?) {
        if let pins = fetchedSchoolPins {
            if self.schoolPins.count > 0  {
                self.mapView.removeAnnotations(self.schoolPins)
            }
            self.schoolPins = pins
            self.mapView.showAnnotations(pins, animated: true)
            if pins.count == 0 {
                SVProgressHUD.showInfo(withStatus: "No resources found")
            } else {
                SVProgressHUD.showSuccess(withStatus: "Found \(pins.count) resources!")
            }
        } else {
            SVProgressHUD.showError(withStatus: "An error occurred")
        }
    }
    
}
extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    private func setContentCell(cell: FUIObjectTableViewCell, detail: Detail) -> FUIObjectTableViewCell{
        cell.backgroundColor = UIColor.clear
        cell.headlineText = detail.title
        cell.subheadlineText = detail.subTitle
        cell.tintColor = .preferredFioriColor(forStyle: .map1)
        if let color = detail.color {
            cell.subheadlineLabel.textColor = color
        }
        cell.detailImage = detail.image
        cell.isUserInteractionEnabled = false
        return cell
    }
    
    private func setSearchCell(cell: FUIObjectTableViewCell, searchResult: MKMapItem) -> FUIObjectTableViewCell {
        let placemark = searchResult.placemark
        cell.headlineText = searchResult.name
        cell.subheadlineText = placemark.title
        cell.isUserInteractionEnabled = true
        cell.backgroundColor = UIColor.clear
        cell.tintColor = .preferredFioriColor(forStyle: .map1)
        return cell
    }
    
    private func setDirectionsCell(cell: FUIMapDetailPanel.ButtonTableViewCell) -> FUIMapDetailPanel.ButtonTableViewCell {
        cell.buttonHeadlineText = "Fastest Route"
        cell.button.backgroundColor = UIColor.preferredFioriColor(forStyle: .map1)
        cell.button.addTarget(self, action: #selector(onDirectionsButton), for: .touchUpInside)
        return cell
    }
    
    private func setNavigateCell(cell: FUIMapDetailPanel.ButtonTableViewCell) -> FUIMapDetailPanel.ButtonTableViewCell {
        cell.buttonHeadlineText = "Directions"
        cell.button.backgroundColor = UIColor.preferredFioriColor(forStyle: .map1)
        cell.button.addTarget(self, action: #selector(onNavigateButton), for: .touchUpInside)
        cell.button.tintColor = UIColor.preferredFioriColor(forStyle: .map1)
        return cell
    }
    
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
            if detail.title == "Fastest Route" {
                let cell = tableView.dequeueReusableCell(withIdentifier: FUIMapDetailPanel.ButtonTableViewCell.reuseIdentifier, for: indexPath) as! FUIMapDetailPanel.ButtonTableViewCell
                return setDirectionsCell(cell: cell)
            } else if detail.title == "Directions" {
                let cell = tableView.dequeueReusableCell(withIdentifier: FUIMapDetailPanel.ButtonTableViewCell.reuseIdentifier, for: indexPath) as! FUIMapDetailPanel.ButtonTableViewCell
                return setNavigateCell(cell: cell)
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
            clearMapOverlays()
            centerMap(location: pin.coordinate, zoom: 0.01)
            setDetailPanel(school: pin.school, offers: pin.offers)
        } else if let annotation = view.annotation {
            centerMap(location: annotation.coordinate, zoom: 0.01)
            setAddressPanel(annotation)
        }
        selectedLocation = view.annotation
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
        if let searchText = searchBar.searchTextField.text, searchText != "" {
            searchForAddreses(searchText)
        }
    }
    
}
extension MainVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse:
            mapView.showsUserLocation = true
            if let userLocation = getUserLocation() {
                self.userLocation = userLocation
                centerMap(location: userLocation, zoom: 0.01)
                fetchSchoolOffers(location: userLocation)
            } else {
                //Try again in 2 seconds
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    if let userLocation = self.getUserLocation() {
                        self.userLocation = userLocation
                        self.centerMap(location: userLocation, zoom: 0.01)
                        self.fetchSchoolOffers(location: userLocation)
                    }
                }
            }
        case .notDetermined:
            isNotDetermined = true
        default:
            print("Denied user location")
        }
    }
}
extension MainVC: SPPermissionsDataSource {
    func configure(_ cell: SPPermissionTableViewCell, for permission: SPPermission) -> SPPermissionTableViewCell {
        cell.permissionTitleLabel.text = "Location When in Use"
        cell.permissionDescriptionLabel.text = "Allow access to your location"
        return cell
    }
}
//extension UIView {
//    func setIsHidden(_ hidden: Bool, animated: Bool) {
//        if animated {
//            if self.isHidden && !hidden {
//                self.alpha = 0.0
//                self.isHidden = false
//            }
//            UIView.animate(withDuration: 0.25, animations: {
//                self.alpha = hidden ? 0.0 : 1.0
//            }) { (complete) in
//                self.isHidden = hidden
//            }
//        } else {
//            self.isHidden = hidden
//        }
//    }
//}
