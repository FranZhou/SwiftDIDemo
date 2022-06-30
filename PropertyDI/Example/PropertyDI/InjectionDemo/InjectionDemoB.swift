//
//  InjectionDemoB.swift
//  PropertyDI_Example
//
//  Created by Fan Zhou on 2022/6/29.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation
import PropertyDI

class InjectionDemoB: InjectionDemoProtocolB {
  func demoB() {
    print("Example for PropertyDI -> InjectionDemoProtocolB")
  }
}

class InjectionDemoB1: InjectionDemoProtocolB {
  func demoB() {
    print("Example for PropertyDI -> InjectionDemoB1")
  }
}
