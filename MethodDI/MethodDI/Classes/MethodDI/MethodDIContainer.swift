//
//  MethodDIContainer.swift
//  MethodDI
//
//  Created by Fan Zhou on 2022/6/28.
//

import Foundation

public typealias MethodInjectClosure = (Any) -> Any

public protocol MethodDIContainerProtocol {
  func register(injectClosure: @escaping MethodInjectClosure)
  func resolve<T>(for instance: T) -> T
}

open class MethodDIContainer {
  private var containers: [MethodInjectClosure] = []

  public static let shared = MethodDIContainer()

  private init() {}
}

extension MethodDIContainer: MethodDIContainerProtocol {
  public func register(injectClosure: @escaping MethodInjectClosure) {
    containers.append(injectClosure)
  }

  public func resolve<T>(for instance: T) -> T {
    var output = instance
    containers
      .forEach { injectClosure in
        if let injected = injectClosure(output) as? T {
          output = injected
        }
      }
    return output
  }

}
