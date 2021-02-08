//
//  ViewController.swift
//  FREAR-26_Test
//
//  Created by YADAV Gaurav[FRJP:IT Store IT & RFID](Yadav Gaurav) on 2021/02/03.
//

import UIKit
import StoreSettings

class ViewController: UIViewController {

    //let dict: [String: String]  = ["brand_code":"plst", "region_code":"cn"]
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setconfig(val: "foo")
        //setconfig(val: "uq")
    }
    
    func setconfig(val : String){
        var dict: [String: String]  = ["brand_code":"plst", "region_code":"sk"]
        UserDefaults.standard.set(dict, forKey: "com.apple.configuration.managed")
        print("Config is as follows :" + StoreSettings.shared.brandCode + " " + StoreSettings.shared.regionCode)
        dict["brand_code"] = val
        UserDefaults.standard.set(dict, forKey: "com.apple.configuration.managed")
        //print(UserDefaults.standard.dictionary(forKey: "com.apple.configuration.managed"))
        print("Config is as follows :" + StoreSettings.shared.brandCode + " " + StoreSettings.shared.regionCode)
        
        dict["brand_code"] = "uq"
        UserDefaults.standard.set(dict, forKey: "com.apple.configuration.managed")
        //print(UserDefaults.standard.dictionary(forKey: "com.apple.configuration.managed"))
        print("Config is as follows :" + StoreSettings.shared.brandCode + " " + StoreSettings.shared.regionCode)
    }


}

