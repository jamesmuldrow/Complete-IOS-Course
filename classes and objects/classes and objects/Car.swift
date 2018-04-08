//
//  Car.swift
//  classes and objects
//
//  Created by James Muldrow on 3/5/18.
//  Copyright © 2018 James Muldrow. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}


class Car {
    
    private var color = "Black"
    private var numOfSeats = 5
    private var typeOfCar : CarType = .Coupe
    
    public
    
    init() {
        
    }
    
    convenience init(color: String){
        self.init()
        self.color = color
    }
    
    func toString() -> String {
        return "Color: \(color) \nNumber of seats: \(numOfSeats) \nType of car: \(typeOfCar)"
    }
    
    func drive(){
        print("Car is moving.")
    }
    
    
}
