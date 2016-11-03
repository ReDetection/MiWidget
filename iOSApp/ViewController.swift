//
//  ViewController.swift
//  MiWidget
//
//  Created by sbuglakov on 14/01/16.
//  Copyright (c) 2016 ReDetection. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let index = buttons.index(of: sender)!
        udpSend(to: IP_ADDRESS, port: PORT, data: COMMANDS[index]!)
    }
    
}
