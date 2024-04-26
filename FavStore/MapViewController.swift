//
//  MapViewController.swift
//  FavStore
//
//  Created by Fatih Oğuz on 26.04.2024.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(saveButtonClicked))
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtonClicked))
        
        
        print(PlaceModel.sharedInstance.placeName)
    }
    

    @objc func saveButtonClicked() {
        
    }
    @objc func backButtonClicked() {
        self.dismiss(animated: true, completion: nil)
    }
}
