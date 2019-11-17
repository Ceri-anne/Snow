//
//  SnowFall.swift
//  SnowFall
//
//  Copyright © 2019 Jackson, Ceri-anne. All rights reserved.
//

import Foundation
import UIKit

public final class SnowFall {
    
    private let view: UIView
    private var snow: SnowView
    private var isSnowing: Bool = false
    
    public init(view: UIView) {
        self.view = view
        self.snow = SnowView().make()
    }
    
    public func start() {
        addToView(view)
        isSnowing = true
    }
    
    public func stop() {
        snow.removeFromSuperview()
        isSnowing = false
    }
    
    public func toggle() {
        if isSnowing {
            stop()
        } else {
            start()
        }
    }
    
    private func addToView(_ view: UIView) {
        
        view.addSubview(snow)
        
        NSLayoutConstraint.activate([
            snow.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            snow.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            snow.topAnchor.constraint(equalTo: view.topAnchor),
            snow.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
    }
    
}
