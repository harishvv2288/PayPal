//
//  Vehicle.swift
//  Skillenza
//
//  Created by Harish on 28/06/19.
//  Copyright © 2019 Harish. All rights reserved.
//

import Foundation

class Vehicle {
    var vehicleId: Int?
    var lotNumber: Int?
    
    init(vehicleNumber vehicle: Int, parkingLotNumber lot:Int) {
        self.vehicleId = vehicle
        self.lotNumber = lot
    }
}
