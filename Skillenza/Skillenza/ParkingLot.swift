//
//  ParkingLot.swift
//  Skillenza
//
//  Created by Harish on 28/06/19.
//  Copyright © 2019 Harish. All rights reserved.
//

import Foundation

enum ParkingData: String {
    case lotTaken = "Lot already taken"
    case alreadyPresent = "Vehicle already present"
    case success = "Vehicle parked Successfully"
}

class ParkingLot {
    
    public func parkVehicle(_ vehicle: Vehicle, completion: @escaping(String)->()) {
        if let lotNumber = vehicle.lotNumber {
            if isLotBooked(lotNumber) {
                completion(ParkingData.lotTaken.rawValue)
            }
        }
        
        if let vehicleNumber = vehicle.vehicleId {
            if isVehicleExists(vehicleNumber) {
                completion(ParkingData.alreadyPresent.rawValue)
            }
        }
        
        completion(ParkingData.success.rawValue)
    }
    
    private func isLotBooked(_ lot: Int) -> Bool {
        //add logic to see if the "lot" is alrady booked and return result accordingly
        //default return false
        return false
    }
    
    private func isVehicleExists(_ vehicleId: Int) -> Bool {
        //add logic to see if the "vehicle" alrady exists and return result accordingly
        //default return false
        return false
    }
}
