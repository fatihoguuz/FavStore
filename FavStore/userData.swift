//
//  userData.swift
//  FavStore
//
//  Created by Fatih Oğuz on 23.04.2024.
//

import Foundation
import Parse
class UserData {
    static let shared = UserData()
    private init() {
        
        let userData = PFUser()
    }
    var userName : String?
    var password : String?
    
    
    
}
