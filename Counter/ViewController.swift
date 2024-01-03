//
//  ViewController.swift
//  Counter
//
//  Created by Soslan Dzampaev on 03.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var meanLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var setZeroButton: UIButton!
    @IBOutlet weak var historyTextView: UITextView!
    private var counter: Int = 0
    private var history:String = "История изменений:\n"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        meanLabel.text = "Значение счётчика: \(counter)"
        plusButton.setTitle("+", for: .normal)
        minusButton.setTitle("-", for: .normal)
        setZeroButton.setTitle("Обнулить счётчик", for: .normal)
        historyTextView.text = history
    }
    
    func updateHistory(with message: String){
        let data = Date()
        let formatter = DateFormatter()
        
        formatter.locale = .current
        formatter.timeZone = .current
        formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
        let dataString = formatter.string(from: Date())
        history += "\(dataString): \(message)\n"
        print(history)
        historyTextView.text = history
    }
    
    @IBAction func plusDidTap(_ sender: Any) {
        counter += 1
        updateHistory(with: "значение изменено на +1")
        viewDidLoad()
    }
    
    @IBAction func minusDidTap(_ sender: Any) {
        if counter != 0{
            counter -= 1
            updateHistory(with: "значение изменено на -1")
        }else{
            counter = 0
            updateHistory(with: "попытка уменьшить значение счётчика ниже 0")
        }
        viewDidLoad()
    }
    
    @IBAction func setZeroDidTap(_ sender: Any) {
        counter = 0
        updateHistory(with: "значение сброшено")
        viewDidLoad()
    }
    
}
