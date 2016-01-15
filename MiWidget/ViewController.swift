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
    
    @IBAction func buttonTapped(sender: UIButton) {
        let index = find(buttons, sender)!
        udpSend(IP_ADDRESS, PORT, COMMANDS[index]!, 3)
    }
    
}
