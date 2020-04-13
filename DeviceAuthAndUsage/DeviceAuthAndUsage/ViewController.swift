//
//  ViewController.swift
//  DeviceAuthAndUsage
//
//  Created by Zack Zhang on 2020/3/12.
//  Copyright © 2020 personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("TVOS")
        Camera().requestAuthentication(completion: { (result:Bool) in

        })
        // Do any additional setup after loading the view.
    }

    @IBAction func btn(_ sender: Any) {

    }
    
}

