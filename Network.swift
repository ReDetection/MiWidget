//
//  Network.swift
//  MiWidget
//
//  Created by sbuglakov on 15/01/16.
//  Copyright (c) 2016 ReDetection. All rights reserved.
//

import CoreFoundation

func udpSend(addressString: String, port: CUnsignedShort, data: [UInt8]) {
    func htons(value: CUnsignedShort) -> CUnsignedShort {
        return (value << 8) + (value >> 8);
    }
    var addr = sockaddr_in()
    addressString.withCString{ ptr -> Void in
        inet_pton(AF_INET, ptr, &addr.sin_addr)
    }
    addr.sin_port = htons(port)
    addr.sin_len = __uint8_t(sizeof(sockaddr_in))
    
    let fd = socket(AF_INET, SOCK_DGRAM, 0)
    
    data.withUnsafeBufferPointer { (dataPtr) -> Void in
        withUnsafePointer(&addr) { addrUnsafe -> Void in
            let addrptr = UnsafePointer<sockaddr>(addrUnsafe)
            sendto(fd, dataPtr.baseAddress, data.count, 0, addrptr, socklen_t(addr.sin_len))
        }
    }
    
    close(fd)
}
