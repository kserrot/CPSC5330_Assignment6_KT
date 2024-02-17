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
    
    var amount : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountInUSDLabel.text = "Amount in USD: \(amount)"
        euroConvert.text = convertLogic.euroAmount != nil ? "€ \(convertLogic.euroAmount!)" : "Conversion not selected"
        yenConvert.text = convertLogic.yenAmount != nil ? "¥ \(convertLogic.yenAmount!)" : "Conversion not selected"
        pesosConvert.text = convertLogic.pesosAmount != nil ? "$ \(convertLogic.pesosAmount!)" : "Conversion not selected"
        rubleConvert.text = convertLogic.rubleAmount != nil ? "₽ \(convertLogic.rubleAmount!)" : "Conversion not selected"
        }
    
    @IBOutlet weak var euroConvert: UILabel!
    @IBOutlet weak var yenConvert: UILabel!
    @IBOutlet weak var pesosConvert: UILabel!
    @IBOutlet weak var rubleConvert: UILabel!
    
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
