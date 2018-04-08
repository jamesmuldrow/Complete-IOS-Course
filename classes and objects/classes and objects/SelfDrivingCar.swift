//
//  SelfDrivingCar.swift
//  classes and objects
//
//  Created by James Muldrow on 3/5/18.
//  Copyright © 2018 James Muldrow. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    private var destination: String?
    
    override init() {
        super .init()
    }
    
    override func drive() {
        super .drive()
        if let userSetDestination = destination {
            print("Driving to \(userSetDestination)")
        }
    }
    
    func setDestination(userSetDestination : String){
        destination = userSetDestination
    }
    
}
