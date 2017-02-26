//
//  FirstViewController.swift
//  ContainerProject
//
//  Created by rhoboro on 2017/02/26.
//  Copyright © 2017 rhoboro. All rights reserved.
//

import UIKit

final class FirstViewController: ChildViewController, STProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func movePushed(_ sender: Any) {
        if let vc = SecondViewController.createInstance() {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

