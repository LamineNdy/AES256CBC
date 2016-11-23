//
//  NoPadding.swift
//  AES256CBC
//
//  Created by Lamine Ndiaye on 19/11/2016.
//  Copyright © 2016 SwiftyBeaver. All rights reserved.
//

import Foundation


public struct NoPadding: Padding {
  
  public init() {
  }
  
  public func add(to data: Array<UInt8>, blockSize: Int) -> Array<UInt8> {
    return data
  }
  
  public func remove(from data: Array<UInt8>, blockSize: Int?) -> Array<UInt8> {
    return data
  }
}
