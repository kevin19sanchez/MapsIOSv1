//
//  Places.swift
//  MapIOS
//
//  Created by kevin on 8/26/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import Foundation

class Places {
    var NamePlaces: String = ""
    var NameCity: String = ""
    var lati: Double = 0.0
    var long: Double = 0.0
    var category: String
    
    
    init(NamePlaces:String,NameCity:String,lati:Double,long:Double,category:String) {
        self.NamePlaces = NamePlaces
        self.NameCity = NameCity
        self.long = long
        self.lati = lati
        self.category = category
    }
    
}
