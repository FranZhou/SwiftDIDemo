//
//  ProtocolB.swift
//  ConstructorDI_Example
//
//  Created by Fan Zhou on 2022/6/28.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

protocol ProtocolB {
  func serviceB()
}

struct B: ProtocolB {
  func serviceB() {
    print("serviceB")
  }
}
