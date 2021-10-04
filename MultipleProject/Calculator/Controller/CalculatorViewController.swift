//
//  CalculatorViewController.swift
//  MultipleProject
//
//  Created by Handy Handy on 30/09/21.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var calculatorView: CalculatorView!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorView.delegate = self
        setupView()
    }
    
    func setupView() {
        calculatorView.result = "\(calculator.addResult())"
    }
}

extension CalculatorViewController: CalculatorViewControllerDelegate {
    func countDidTap() {
        guard
            let xValueString = calculatorView.xValue,
            let xValue = Double(xValueString),
            let yValueString = calculatorView.yValue,
            let yValue = Double(yValueString)
        else { return }
        
        calculator.xNumber = xValue
        calculator.yNumber = yValue
        
        setupView()
    }
}
