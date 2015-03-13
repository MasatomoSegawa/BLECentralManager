//
//  CentralManager.swift
//  SwiftCoreBluetooth
//
//  Created by Masatomo Segawa on 2015/03/13.
//  Copyright (c) 2015年 Masatomo Segawa. All rights reserved.
//

import Foundation
import CoreBluetooth

/**
CBCentralManagerを管理するシングルトンクラス.
*/
class CentralManager : NSObject , CBCentralManagerDelegate{
    
    private var myCentralManager : CBCentralManager?
    
    class var sharedInstance : CentralManager {
        struct Static {
            static let instance : CentralManager = CentralManager()
        }
        return Static.instance
    }
    
    override init(){
        super.init()
        myCentralManager = CBCentralManager(delegate: self, queue: nil)
    }
    
    /**
    アドバタイズしてるPeripheralのスキャンを開始するメソッド.
    */
    func StartPeripheralScane(){
        
        myCentralManager?.scanForPeripheralsWithServices(nil, options: nil)
        
    }
    
    /**
    Peripheralが検知されたら呼び出されるメソッド.
    */
    func centralManager(central: CBCentralManager!, didDiscoverPeripheral peripheral: CBPeripheral!, advertisementData: [NSObject : AnyObject]!, RSSI: NSNumber!) {
        
        println(peripheral.name)
        
    }
    
    /**
    CentralManagerの状態が更新された時に呼び出されるメソッド.
    */
    func centralManagerDidUpdateState(central: CBCentralManager!) {
        
        switch(central.state){
            
        case .Unknown:
            println("Unknown")
            
        case .PoweredOff:
            println("PoweredOff")

        case .PoweredOn:
            println("PoweredOn")
            
        case .Unsupported:
            println("Unsupported")
            
        case .Resetting:
            println("Resetting")
            
        case .Unauthorized:
            println("Unauthorized")
        }
                
    }
    
}