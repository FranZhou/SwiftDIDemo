//
//  InjectionDemoB.swift
//  InjectionDemo
//
//  Created by Fan Zhou on 2022/6/29.
//

import Foundation
import PropertyDI

class InjectionDemoB: InjectionDemoProtocolB {
  func demoB() {
    print("Example for PropertyDI -> InjectionDemoProtocolB")
  }
}

struct InjectionPropertyDemoB: InjectionPropertyValueProtocol {
  static var injectedProperty: InjectionDemoProtocolB? = InjectionDemoB()
}

extension InjectionPropertyContainerProtocol {
  var demoB: InjectionDemoProtocolB? {
    get {
      self[InjectionPropertyDemoB.self]
    }
    set {
      self[InjectionPropertyDemoB.self] = newValue
    }
  }
}
