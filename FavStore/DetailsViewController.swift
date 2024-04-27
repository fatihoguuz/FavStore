//
//  DetailsViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 26.04.2024.
//

import UIKit
import MapKit
import Parse

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsImageView: UIImageView!
    @IBOutlet weak var detailsNameLabel: UILabel!
    @IBOutlet weak var detailsTypeLabel: UILabel!
    @IBOutlet weak var detailsAtmosphereLabel: UILabel!
    @IBOutlet weak var detailsMapView: MKMapView!
    var chosenPlaceId = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        let query = PFQuery(className: "Places")
        query.whereKey("objectId", equalTo: chosenPlaceId)
        query.findObjectsInBackground { objects, error in
            if error != nil {
                
            }else {
                print(objects)
            }
        }
    }
    

  

}
