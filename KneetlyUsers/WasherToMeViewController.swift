//
//  Created by Suresh.
//  Copyright © 2016 Be IT Safe Pty Ltd. All rights reserved.
//

import UIKit
import MapKit

class WasherToMeViewController: UIViewController,MKMapViewDelegate {
    
    @IBOutlet weak var mapview: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let annotationView = MKPinAnnotationView()
        annotationView.pinTintColor = UIColor.purple
        
        let theSpan:MKCoordinateSpan = MKCoordinateSpanMake(0.01 , 0.01)
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: -28.0818761, longitude: 153.4105032)
        let theRegion:MKCoordinateRegion = MKCoordinateRegionMake(location, theSpan)
        mapview.setRegion(theRegion, animated: false)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "Set Car Location"
        
        self.mapview.delegate = self;
        self.mapview.addAnnotation(annotation)
    }
}
