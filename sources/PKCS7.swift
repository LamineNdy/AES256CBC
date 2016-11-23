//
//  PKCS7.swift
//  AES256CBC
//
//  Created by Lamine Ndiaye on 19/11/2016.
//  Copyright © 2016 SwiftyBeaver. All rights reserved.
//

import Foundation


struct PKCS7: Padding {
  
  init() {
  }
  
  func add(to bytes: [UInt8], blockSize: Int) -> [UInt8] {
    let padding = UInt8(blockSize - (bytes.count % blockSize))
    var withPadding = bytes
    if padding == 0 {
      // If the original data is a multiple of N bytes, then an extra block of bytes with value N is added.
      for _ in 0..<blockSize {
        withPadding.append(contentsOf: [UInt8(blockSize)])
      }
    } else {
      // The value of each added byte is the number of bytes that are added
      for _ in 0..<padding {
        withPadding.append(contentsOf: [UInt8(padding)])
      }
    }
    return withPadding
  }
  
  func remove(from bytes: [UInt8], blockSize: Int?) -> [UInt8] {
    let lastByte = bytes.last!
    let padding = Int(lastByte) // last byte
    let finalLength = bytes.count - padding
    
    if finalLength < 0 {
      return bytes
    }
    
    if padding >= 1 {
      return Array(bytes[0..<finalLength])
    }
    return bytes
  }
}
