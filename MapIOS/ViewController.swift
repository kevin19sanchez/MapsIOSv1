//
//  ViewController.swift
//  MapIOS
//
//  Created by kevin on 8/26/19.
//  Copyright © 2019 kevin. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var location: [Places] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mapView.delegate = self
        
        /////////////
        ////INSTANCIA
        let locaciones = Places(NamePlaces: "Casa Blanca",
                                NameCity: "El Salvador",
                                lati: 13.9879619,
                                long: -89.6734326,
                                category:"Archaeological")
        location.append(locaciones)
        
        let locaciones1 = Places(NamePlaces: "Joya de Ceren",
                                 NameCity: "El Salvador",
                                 lati: 13.8279206,
                                 long: -89.3584273,
                                 category: "Archaeological")
        location.append(locaciones1)
        
        let locaciones2 = Places(NamePlaces: "El Tazumal",
                                 NameCity: "El Salvador",
                                 lati: 13.9795096,
                                 long: -89.6765596,
                                 category:"Archaeological")
        location.append(locaciones2)
        
        let locaciones3 = Places(NamePlaces: "Ruinas de San Andres",
                                 NameCity: "El Salvador",
                                 lati:13.7989263,
                                 long: -89.3946197,
                                 category:"Archaeological")
        location.append(locaciones3)
        
        let locaciones4 = Places(NamePlaces: "Cihuatan",
                                 NameCity: "El Salvador",
                                 lati: 13.9807749,
                                 long: -89.1760406,
                                 category:"Archaeological")
        location.append(locaciones4)
        
        let locaciones5 = Places(NamePlaces: "Tikal",
                                 NameCity: "Guatemala",
                                 lati: 17.2209651,
                                 long: -89.6286301,
                                 category:"Archaeological")
        location.append(locaciones5)
        
        let locaciones6 = Places(NamePlaces: "Copan Ruinas",
                                 NameCity: "Honduras",
                                 lati: 14.8460772,
                                 long: -89.1681294,
                                 category:"Archaeological")
        location.append(locaciones6)
        
        let locaciones7 = Places(NamePlaces: "Palenque",
                                 NameCity: "Mexico",
                                 lati: 14.8460772,
                                 long: -89.1681294,
                                 category:"Archaeological")
        location.append(locaciones7)
        
        let locaciones8 = Places(NamePlaces: "El Tajin",
                                 NameCity: "Mexico",
                                 lati: 20.4382632,
                                 long: -97.3884943,
                                 category:"Archaeological")
        location.append(locaciones8)
        
        let locaciones9 = Places(NamePlaces: "Paquime",
                                 NameCity: "Mexico",
                                 lati: 30.3674873,
                                 long: -107.9507774,
                                 category:"Archaeological")
        location.append(locaciones9)
        
        let locaciones10 = Places(NamePlaces: "El Puente",
                                  NameCity: "Honduras",
                                  lati: 14.9682796,
                                  long: -89.1227066,
                                  category:"Park")
        location.append(locaciones10)
        
        let locaciones11 = Places(NamePlaces: "Ciudad Perdida",
                                  NameCity: "Colombia",
                                  lati: 11.0379971,
                                  long: -73.9273808,
                                  category:"Archaeological")
        location.append(locaciones11)
        
        let locaciones12 = Places(NamePlaces: "San Agustin",
                                  NameCity: "Colombia",
                                  lati: 1.8871867,
                                  long: -76.2972791,
                                  category:"Archaeological")
        location.append(locaciones12)
        
        let locaciones13 = Places(NamePlaces: "Tierradentro",
                                  NameCity: "Colombia",
                                  lati: 2.5739834,
                                  long: -76.0431299,
                                  category:"Archaeological")
        location.append(locaciones13)
        
        let locaciones14 = Places(NamePlaces: "Monte Alban",
                                  NameCity: "Mexico",
                                  lati: 17.0465643,
                                  long: -96.7681083,
                                  category:"Archaeological")
        location.append(locaciones14)
        
        for i in location{
            let map = CLLocationCoordinate2D(latitude: i.lati, longitude: i.long)
            let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            let region = MKCoordinateRegion(center: map, span: span)
            mapView.setRegion(region, animated: true)
            
            let annotation = MKPointAnnotation()
            annotation.coordinate = map
            annotation.title = i.NamePlaces
            annotation.subtitle = i.NameCity
            
            mapView.addAnnotation(annotation)
        }
    }
}

extension ViewController:MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "AnnotationView")
        
        if annotationView == nil{
            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "AnnotationView")
        }
        
        if let title = annotation.subtitle, title == "Archaeological"{
            annotationView?.image = UIImage(named: "ubication")
        }else if let flag = annotation.subtitle, flag == "Park"{
            annotationView?.image = UIImage(named: "flag")
        }
        annotationView?.canShowCallout = true
        return annotationView
    }
}


