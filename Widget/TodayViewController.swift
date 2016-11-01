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
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        let index = buttons.index(of: sender)!
        udpSend(IP_ADDRESS, port: PORT, data: COMMANDS[index]!)
    }
    
    func widgetMarginInsets(forProposedMarginInsets defaultMarginInsets: UIEdgeInsets) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
}
