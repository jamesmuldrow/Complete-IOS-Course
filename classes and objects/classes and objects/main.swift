//
//  main.swift
//  classes and objects
//
//  Created by James Muldrow on 3/5/18.
//  Copyright © 2018 James Muldrow. All rights reserved.
//

import Foundation

let myCar = Car(color: "Red")
let mySelfDrivingCar = SelfDrivingCar()


//print(myCar.toString())
//myCar.drive()

//print(mySelfDrivingCar.toString())

mySelfDrivingCar.setDestination(userSetDestination: "1 Muldrow Way")
mySelfDrivingCar.drive()

