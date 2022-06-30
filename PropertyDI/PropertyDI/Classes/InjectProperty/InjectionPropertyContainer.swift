//
//  InjectionPropertyContainer.swift
//  PropertyDI
//
//  Created by Fan Zhou on 2022/6/28.
//

import Foundation
import DIContainer

public class InjectionPropertyContainer {
  private static var containers = InjectionPropertyContainer()
  private lazy var diContainer: DIContainerProtocol = DIContainer.shared

  public var demoA: InjectionDemoProtocolA? {
    get {
      diContainer.resolve()
    }
    set {
      diContainer.register(for: InjectionDemoProtocolA.self, value: newValue)
    }
  }

  public var demoB: InjectionDemoProtocolB? {
    get {
      diContainer.resolve()
    }
    set {
      diContainer.register(for: InjectionDemoProtocolB.self, value: newValue)
    }
  }
}

extension InjectionPropertyContainer {

  public static subscript<T>(_ keyPath: WritableKeyPath<InjectionPropertyContainer, T?>) -> T? {
    get {
      containers[keyPath: keyPath]
    }
    set {
      containers[keyPath: keyPath] = newValue
    }
  }

}
