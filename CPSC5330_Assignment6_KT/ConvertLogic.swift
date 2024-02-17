//
//  ConvertLogic.swift
//  CPSC5330_Assignment6_KT
//
//  Created by Kaique Torres on 2/17/24.
//

import Foundation

struct ConvertLogic {
    
    var euroSwitch = false
    var yenSwitch = false
    var pesosSwitch = false
    var rubleSwitch = false
    
   /* var euroSwitch: Bool
    var yenSwitch: Bool
    var pesosSwitch: Bool
    var rubleSwitch: Bool*/

    private let euroRate = 0.92
    private let yenRate = 113.5
    private let pesosRate = 19.7
    private let rubleRate = 76.25

        
    init() {
        euroSwitch = false
        yenSwitch = false
        pesosSwitch = false
        rubleSwitch = false
    }
        
        
    var euroAmount: Double?
    var yenAmount: Double?
    var pesosAmount: Double?
    var rubleAmount: Double?

        
    mutating func convertCurrencyAmount(amount: Int, completion: (Bool) -> Void) {
        if euroSwitch {
            euroAmount = Double(amount) * euroRate
        } else {
            euroAmount = nil
        }
        if yenSwitch {
            yenAmount = Double(amount) * yenRate
        } else {
            yenAmount = nil
        }
        if pesosSwitch {
            pesosAmount = Double(amount) * pesosRate
        } else {
            pesosAmount = nil
        }
        if rubleSwitch {
            rubleAmount = Double(amount) * rubleRate
        } else {
            rubleAmount = nil
        }
        completion(true)
    }
}
