//
//  PlaceModel.swift
//  FavStore
//
//  Created by Fatih Oğuz on 26.04.2024.
//

import Foundation
import UIKit

class PlaceModel {
    
    static let sharedInstance = PlaceModel()
    
   var placeName = ""
    var placeType = ""
    var placeAtmosphere = ""
    var placeImage = UIImage()
    
    private init() {}
    
}
