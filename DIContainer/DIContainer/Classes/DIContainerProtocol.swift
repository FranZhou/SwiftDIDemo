//
//  DIContainerProtocol.swift
//  DIContainer
//
//  Created by Fan Zhou on 2022/6/29.
//

import Foundation

public protocol DIContainerProtocol {
  func register<T>(for key: T.Type, value: @escaping @autoclosure () -> T?)
  func resolve<T>() -> T?
}
