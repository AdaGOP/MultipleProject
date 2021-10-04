//
//  CalculatorView.swift
//  MultipleProject
//
//  Created by Handy Handy on 30/09/21.
//

import UIKit

class CalculatorView: UIView {
    
    @IBOutlet weak var xTextField: UITextField!
    @IBOutlet weak var yTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    weak var delegate: CalculatorViewControllerDelegate? {
        didSet {
            customizeView()
        }
    }
    
    func customizeView() {}
    
    var xValue: String? {
        get { xTextField?.text }
        set { xTextField.text = newValue }
    }
    
    var yValue: String? {
        get { yTextField?.text }
        set { xTextField.text = newValue }
    }
    
    var result: String? {
        get { resultLabel?.text }
        set { resultLabel.text = newValue }
    }
    
    @IBAction func countButtonDidTap() {
        delegate?.countDidTap()
    }
    
}
