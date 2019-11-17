//
//  ViewController.swift
//  Snow
//
//  Copyright © 2019 Jackson, Ceri-anne. All rights reserved.
//

import UIKit
import SnowFall

class ViewController: UIViewController {

    var snowFall: SnowFall?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSky()
        setUpSnow()
    }
    
    func setUpSky() {
        let sky = GradientView()
        sky.startColor = UIColor(red: 0.1, green: 0.25, blue: 0.5, alpha: 1)
        sky.endColor = UIColor(red: 0.75, green: 0.8, blue: 0.9, alpha: 1)
        sky.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(sky)
        NSLayoutConstraint.activate([
            sky.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            sky.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            sky.topAnchor.constraint(equalTo: view.topAnchor),
            sky.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            ])
    }
    
    func setUpSnow() {
        snowFall = SnowFall(view: view)
        snowFall?.start()
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        snowFall?.toggle()
    }

}

