//
//  ViewController.swift
//  HWTrafficLights
//
//  Created by Владислав Крисько on 14/10/2020.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        redLightView.alpha = lightIsOn
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.width / 2
        greenLightView.layer.cornerRadius = redLightView.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        
        startButton.titleLabel?.text = "NEXT"
        
        switch currentLight {
        
        case .red:
            currentLight = .yellow
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
        case .yellow:
            currentLight = .green
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
        case .green:
            currentLight = .red
            redLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOff
        }
    }
}


