//
//  ViewController.swift
//  Counter
//
//  Created by Soslan Dzampaev on 03.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var meanLabel: UILabel!
    
    private var counter: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        meanLabel.text = "Значение счётчика: \(counter)"
        changeButton.setTitle("Увеличить на 1", for: .normal)
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        counter += 1
        viewDidLoad()
    }
    
    
    
}
