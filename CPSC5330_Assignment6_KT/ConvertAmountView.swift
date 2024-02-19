//
//  ConvertAmountViewController.swift
//  CPSC5330_Assignment6_KT
//
//  Created by Kaique Torres on 2/17/24.
//

import UIKit

class ConvertAmountView: UIViewController {
    
    var convertLogic: ConvertLogic!

    
    @IBOutlet weak var amountInUSDLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var pesosLabel: UILabel!
    @IBOutlet weak var rubleLabel: UILabel!
    
    @IBOutlet weak var euroConvert: UILabel!
    @IBOutlet weak var yenConvert: UILabel!
    @IBOutlet weak var pesosConvert: UILabel!
    @IBOutlet weak var rubleConvert: UILabel!
    
    
    var amount : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountInUSDLabel.text = "Amount in USD: \(amount)"
        
        //print("Euro Amount: \(String(describing: convertLogic.euroAmount))")
        updateConversionLabel(euroConvert, currencyLabel: euroLabel, withAmount: convertLogic.euroAmount, symbol: "€")
        
        //print("Yen Amount: \(String(describing: convertLogic.yenAmount))")
        updateConversionLabel(yenConvert, currencyLabel: yenLabel, withAmount: convertLogic.yenAmount, symbol: "¥")
        
       //print("Pesos Amount: \(String(describing: convertLogic.pesosAmount))")
        updateConversionLabel(pesosConvert, currencyLabel: pesosLabel, withAmount: convertLogic.pesosAmount, symbol: "$")
          
        //print("Ruble Amount: \(String(describing: convertLogic.rubleAmount))")
        updateConversionLabel(rubleConvert, currencyLabel: rubleLabel, withAmount: convertLogic.rubleAmount, symbol: "₽")
    }
            
    func updateConversionLabel(_ label: UILabel, currencyLabel: UILabel, withAmount amount: Double?, symbol: String) {
        if let amount = amount {
            label.text = "\(symbol) \(amount)"
            label.isHidden = false
            currencyLabel.isHidden = false
        } else {
            label.isHidden = true
            currencyLabel.isHidden = true
        }
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
