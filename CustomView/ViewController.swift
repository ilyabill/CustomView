//
//  ViewController.swift
//  CustomView
//
//  Created by ILYA BILARUS on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trafficLighs1: TraficLights!
    @IBOutlet weak var trafficLighs2: TraficLights!
    @IBOutlet weak var trafficLighs3: TraficLights!
    @IBOutlet weak var trafficLighs4: TraficLights!
    @IBOutlet weak var trafficLighs5: TraficLights!
    @IBOutlet weak var trafficLighs6: TraficLights!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLighs1.currentColor = .red
        trafficLighs2.currentColor = .green
        trafficLighs3.currentColor = .yellow
        trafficLighs4.currentColor = .green
        trafficLighs5.currentColor = .yellow
        trafficLighs6.currentColor = .red
    }

    
    @IBAction func toggleButtonPressed(_ sender: UIButton) {
        trafficLighs1.toggle()
        trafficLighs2.toggle()
        trafficLighs3.toggle()
        trafficLighs4.toggle()
        trafficLighs5.toggle()
        trafficLighs6.toggle()
    }
}

