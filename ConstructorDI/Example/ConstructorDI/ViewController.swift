//
//  ViewController.swift
//  ConstructorDI
//
//  Created by FranZhou on 06/28/2022.
//  Copyright (c) 2022 FranZhou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    test()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  private func test() {
    let demo1 = DemoClass()
    demo1.printTest()
  }
  
}

