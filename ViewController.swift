//
//  ViewController.swift
//  PotholeApplication
//
//  Created by Anshula Varma on 2/14/18.
//  Copyright © 2018 CityOfRichardson. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    
    //Gather The Accelerometer Information
    var motionManager = CMMotionManager()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        /*Don't want the data to be sent back constantly (but if you decide to change it from 1 to 0 - I just thought once every second would be good)*/
        //ACCELEROMETER INFORMATION
        motionManager.accelerometerUpdateInterval = 1
        
        motionManager.startAccelerometerUpdates(to:OperationQueue.current!) {(currentData, someError) in
            if let accelerometerData = currentData
            {
                print(accelerometerData)
                
                /*Now if you only want to check for a certain change then uncomment the following */
                /*
                 if accelerometerData.x > 10:
                 {
                    print("This might be a pothole")
                 }
                 
                 */
            }
        }
        
        //GYROSCOPE INFORMATION - rotation rate
        motionManager.gyroUpdateInterval = 1
        
        motionManager.startGyroUpdates(to:OperationQueue.current!) {(currentData, someError) in
           
            if let gyroData = currentData
            {
                print(gyroData.rotationRate)
                
                /*Now if you only want to check for a certain change then uncomment the following */
                /*
                 if gyroData.rotationRate.z > 10:
                 {
                 print("This might be a pothole")
                 }
                 
                 */
                
            }
            
        }
        
        //MAGNETOMETER
        motionManager.magnetometerUpdateInterval = 1
        
        motionManager.startMagnetometerUpdates(to:OperationQueue.current!) {(currentData, someError) in
            
            if let magData = currentData
            {
                print(magData)
                
                /*Now if you only want to check for a certain change then uncomment the following */
                /*
                 if magData.magneticfield.y > 10:
                 {
                 print("This might be a pothole")
                 }
                 
                 */
                
            }
            
        }
        
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

