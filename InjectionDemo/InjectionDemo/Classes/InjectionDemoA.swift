//
//  InjectionDemoA.swift
//  InjectionDemo
//
//  Created by Fan Zhou on 2022/6/29.
//

import Foundation
import PropertyDI

class InjectionDemoA: InjectionDemoProtocolA {
  func demoA() {
    print("Example for PropertyDI -> InjectionDemoProtocolA")
  }
}

struct InjectionPropertyDemoA: InjectionPropertyValueProtocol {
  static var injectedProperty: InjectionDemoProtocolA? = InjectionDemoA()
}

extension InjectionPropertyContainerProtocol {
  var demoA: InjectionDemoProtocolA? {
    get {
      self[InjectionPropertyDemoA.self]
    }
    set {
      self[InjectionPropertyDemoA.self] = newValue
    }
  }
}
