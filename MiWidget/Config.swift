//
//  Config.swift
//  MiWidget
//
//  Created by sbuglakov on 15/01/16.
//  Copyright (c) 2016 ReDetection. All rights reserved.
//

import Foundation

// I found these values at
// https://github.com/mwittig/node-milight-promise/blob/5543eac4b6b386dab90b11e90e7ffb782cdfeafc/src/commands.js

let COMMANDS: [Int: [UInt8]] = [
    0: [0x21,0x00,0x55],
    1: [0x24,0x00,0x55],
    2: [0x23,0x00,0x55],
    3: [0x22,0x00,0x55],
]

let IP_ADDRESS: String = nil //set your ip address here like "192.168.1.1"
let PORT: CUnsignedShort = 8899
