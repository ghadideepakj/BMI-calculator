//
//  SecondViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Veekay Infotech on 16/02/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    var bmiValue : String?
    var adviceString : String?
    var color : UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceString
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        //navigationController?.popViewController(animated: true)

        dismiss(animated: true, completion: nil)
    }
}
