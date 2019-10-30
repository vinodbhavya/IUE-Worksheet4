//
//  ViewController.swift
//  IUE-Worksheet4
//
//  Created by formando on 30/10/2019.
//  Copyright © 2019 pt.ipleiria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var plusButton: CustomButton!
    
    @IBOutlet weak var minusButton: CustomButton!
    
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
        func viewWillAppear() {
            plusButton.transform = CGAffineTransform(translationX: -view.bounds.width, y: 0)
            minusButton.transform = CGAffineTransform(translationX: view.bounds.width, y: 0)
            counterView.transform = CGAffineTransform(translationX: 0, y: -view.bounds.height)
            counterLabel.transform = CGAffineTransform(translationX: 0, y: view.bounds.height)
        }
     
        // Do any additional setup after loading the view.
    }




