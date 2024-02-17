//
//  ViewController.swift
//  CPSC5330_Assignment6_KT
//
//  Created by Kaique Torres on 2/17/24.
//

import UIKit

class ViewController: UIViewController {
    
    var convertLogic = ConvertLogic()
    var amount : Int = 0
    
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var usdValue: UITextField!
    @IBOutlet weak var euroSwitch: UISwitch!
    @IBOutlet weak var yenSwitch: UISwitch!
    @IBOutlet weak var pesosSwitch: UISwitch!
    @IBOutlet weak var rubleSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        errorLabel.isHidden = true
        
        euroSwitch.isOn = false
        yenSwitch.isOn = false
        pesosSwitch.isOn = false
        rubleSwitch.isOn = false
    }
    
    @IBAction func amountInUSD(_ sender: UITextField) {
        
        if let amountText = sender.text,
            let amountInt = Int(amountText){
            amount = amountInt
            errorLabel.isHidden = true
        } else {
            errorLabel.isHidden = false
            errorLabel.text = "Invalid input. Please enter just numbers"
        }
    }
    
    @IBAction func euroCurrency(_ sender: UISwitch) {
        convertLogic.euroSwitch = sender.isOn
    }
    
    @IBAction func yenCurrency(_ sender: UISwitch) {
        convertLogic.yenSwitch = sender.isOn
    }
    
    @IBAction func pesosCurrency(_ sender: UISwitch) {
        convertLogic.pesosSwitch = sender.isOn
    }
    
    @IBAction func rubleCurrency(_ sender: UISwitch) {
        convertLogic.rubleSwitch = sender.isOn
    }
    
    
    @IBAction func convertButton(_ sender: UIButton) {
        
        if let amountText = usdValue.text, let amountInt = Int(amountText) {
            errorLabel.isHidden = true
            convertLogic.convertCurrencyAmount(amount: amountInt) { [weak self] _ in
                DispatchQueue.main.async {
                    self?.performSegue(withIdentifier: "toConvertAmount", sender: self)
                }
            }
        } else {
            errorLabel.isHidden = false
            errorLabel.text = "Please enter a valid USD amount."
        }
}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toConvertAmount" {
            let convertAmountVC = segue.destination as! ConvertAmountView
            convertAmountVC.convertLogic = convertLogic
            convertAmountVC.amount = usdValue.text ?? ""
        }
    }
}
