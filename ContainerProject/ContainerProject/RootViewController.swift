//
//  RootViewController.swift
//  ContainerProject
//
//  Created by rhoboro on 2017/02/26.
//  Copyright © 2017 rhoboro. All rights reserved.
//

import UIKit

/**
 RootViewControllerは常にこのクラスにする
 */

final class RootViewController: UIViewController, STProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let vc = ContainerViewController.createInstance() {
            present(vc, animated: false, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

