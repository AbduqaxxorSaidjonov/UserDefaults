//
//  Defs.swift
//  UserDefaults
//
//  Created by Abduqaxxor on 5/4/22.
//

import Foundation
import SwiftKeychainWrapper

class Defs: ObservableObject{
    
    @Published var password : String{
        didSet{
            KeychainWrapper.standard.set(password,forKey: "password")
        }
    }

    
    @Published var account: Account?{
    didSet{
        storeAccount(account: account ?? Account(holderName: "no", cardNumber: "no", accountBalance: "no", spendingLimit: "no"))
    }
}

    init(){
        self.password = KeychainWrapper.standard.object(forKey: "password") as? String ?? "no password"
        self.account = loadAccount()
}


    func storeAccount(account: Account){
    let encoder = JSONEncoder()
    if let encodedAccount = try? encoder.encode(account) {
        UserDefaults.standard.set(encodedAccount, forKey: "account")
    }
}

    func loadAccount() -> Account?{
    if let savedAccountData = UserDefaults.standard.object(forKey: "account") as? Data {
        let decoder = JSONDecoder()
        if let savedAccount = try? decoder.decode(Account.self, from: savedAccountData){
            return savedAccount
        }
    }
    return nil
}
}
