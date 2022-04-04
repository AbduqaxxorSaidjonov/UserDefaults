//
//  HomeScreen.swift
//  UserDefaults
//
//  Created by Abduqaxxor on 5/4/22.
//

import SwiftUI

struct HomeScreen: View {
    @ObservedObject var defs = Defs()
   
    init(){
//        print(Defaults.loadUser())
//        Defaults.storeUser(user: User(firstname: "Abdulaziz", lastname: "Xoliqov", email: "abdulaziz@gmail.com", phone: "+998983072349", address: "Tashkent Xavas st."))
//        print(Defaults.loadUser())
//
        print(defs.loadAccount())
        defs.storeAccount(account: Account(holderName: "Abduqahhor", cardNumber: "123456778", accountBalance: "no balance", spendingLimit: "20"))
        print(defs.loadAccount())
    }
    
    var body: some View {
        Text("Hello World!")
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
