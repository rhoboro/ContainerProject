//
//  ContainerViewController.swift
//  ContainerProject
//
//  Created by rhoboro on 2017/02/26.
//  Copyright © 2017 rhoboro. All rights reserved.
//

import UIKit

final class ContainerViewController : UIViewController, STProtocol {
    
    @IBOutlet weak var containerView: UIView!
    
    @IBOutlet weak var barHeight: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let st = UIStoryboard(name: "FirstViewController", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "NavigationController")
        addChildViewController(vc)
        containerView.addSubview(vc.view)
        vc.didMove(toParentViewController: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func notify() {
        barHeight.constant = barHeight.constant == 20 ? 0 : 20
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
}

