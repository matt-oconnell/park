//
//  ViewController.swift
//  Park
//
//  Created by Matt O'Connell on 3/25/17.
//  Copyright © 2017 Matt O'Connell. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var Map: MKMapView!
    
    let manager = CLLocationManager()
    var setLocation = false
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if (!setLocation) {
            print("HERE")
            updateLocation(locations: locations)
        }
        setLocation = true
        
    }
    
    func updateLocation(locations: [CLLocation]) {
        let location = locations[0]
        let userLocation = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let span = MKCoordinateSpanMake(0.004, 0.004)
        let region = MKCoordinateRegionMake(userLocation, span)
        
        Map.setRegion(region, animated: true)
        
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = userLocation
        annotation.title = "Your Car!"
        annotation.subtitle = "is here"
        
        Map.addAnnotation(annotation)
        setLocation = true
        
        Map.showsUserLocation = true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
