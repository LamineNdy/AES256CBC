//
//  Padding.swift
//  AES256CBC
//
//  Created by Lamine Ndiaye on 19/11/2016.
//  Copyright © 2016 SwiftyBeaver. All rights reserved.
//

import Foundation


public protocol Padding {
  func add(to: Array<UInt8>, blockSize: Int) -> Array<UInt8>
  func remove(from: Array<UInt8>, blockSize: Int?) -> Array<UInt8>
}
