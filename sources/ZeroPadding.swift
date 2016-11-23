//
//  ZeroPadding.swift
//  AES256CBC
//
//  Created by Lamine Ndiaye on 19/11/2016.
//  Copyright © 2016 SwiftyBeaver. All rights reserved.
//

import Foundation

public struct ZeroPadding: Padding {
  
  public init() {
  }
  
  public func add(to bytes: Array<UInt8>, blockSize: Int) -> Array<UInt8> {
    
    let paddingCount = blockSize - (bytes.count % blockSize)
    if paddingCount > 0 {
      return bytes + Array<UInt8>(repeating: 0, count: paddingCount)
    }
    
    return bytes
  }
  
  public func remove(from bytes: Array<UInt8>, blockSize: Int?) -> Array<UInt8> {
//    for (idx, value) in bytes.reversed().enumerated() {
//      if value != 0 {
//        return Array(bytes[0 ..< bytes.count - idx])
//      }
//    }
    return bytes
  }
  
}
