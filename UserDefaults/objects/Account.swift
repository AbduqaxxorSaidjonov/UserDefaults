//
//  Account.swift
//  UserDefaults
//
//  Created by Abduqaxxor on 5/4/22.
//

import Foundation

struct Account: Codable{
    let holderName: String
    let cardNumber: String
    let accountBalance: String
    let spendingLimit: String
}
