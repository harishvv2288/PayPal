//
//  ViewController.swift
//  Skillenza
//
//  Created by Harish on 28/06/19.
//  Copyright © 2019 Harish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var parkingLot: ParkingLot?
    
    var vehicle: Vehicle?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.parkingLot = ParkingLot()  
        self.vehicle = Vehicle.init(vehicleNumber: 111, parkingLotNumber: 222)
    }
    
    @IBAction func parkVehicleNow(_ sender: UIButton) {
        self.parkingLot?.parkVehicle(self.vehicle!, completion: { (parkingStatus) in
            print(parkingStatus)
            self.showAlert(text: parkingStatus)
        })
    }
    
    func showAlert(text: String) {
        let alert = UIAlertController(title: text, message: nil, preferredStyle: UIAlertControllerStyle.alert)

        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

