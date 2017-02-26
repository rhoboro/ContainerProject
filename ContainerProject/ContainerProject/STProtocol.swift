//
//  STProtocol.swift
//  ContainerProject
//
//  Created by rhoboro on 2017/02/26.
//  Copyright © 2017 rhoboro. All rights reserved.
//

import UIKit

protocol STProtocol {
    static func createInstance() -> Self?
}

extension STProtocol {
    static func createInstance() -> Self? {
        let className = String(describing: Self.self)
        let st = UIStoryboard(name: className, bundle: nil)
        let instance = st.instantiateViewController(withIdentifier: className) as? Self
        return instance
    }
}
