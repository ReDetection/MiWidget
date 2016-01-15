//
//  TodayViewController.swift
//  Widget
//
//  Created by sbuglakov on 14/01/16.
//  Copyright (c) 2016 ReDetection. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBAction func buttonTapped(sender: UIButton) {
        let index = find(buttons, sender)!
        udpSend(IP_ADDRESS, PORT, COMMANDS[index]!, 3)
    }
    
    func widgetMarginInsetsForProposedMarginInsets(defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsetsZero
    }
    
}
