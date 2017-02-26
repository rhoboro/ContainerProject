//
//  ChildViewController.swift
//  ContainerProject
//
//  Created by rhoboro on 2017/02/26.
//  Copyright © 2017 rhoboro. All rights reserved.
//

import UIKit

class ChildViewController: UIViewController {
    
    var container : ContainerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func didMove(toParentViewController parent: UIViewController?) {
        super.didMove(toParentViewController: parent)
        container = parent?.parent as? ContainerViewController
    }
    
    @IBAction func notify(_ sender: Any) {
        container?.notify()
    }
}
