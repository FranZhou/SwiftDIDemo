//
//  DIContainer.swift
//  DIContainer
//
//  Created by Fan Zhou on 2022/6/29.
//

import Foundation

public class DIContainer {

  private var containers: [String: () -> Any] = [:]

  public static let shared = DIContainer()

  private init() {}
}

extension DIContainer: DIContainerProtocol {
  public func register<T>(for key: T.Type, value: @escaping @autoclosure () -> T?) {
    containers["\(key)"] = value
  }

  public func resolve<T>() -> T? {
    guard let closure = containers["\(T.self)"] else {
      return nil
    }
    return closure() as? T
  }
}
