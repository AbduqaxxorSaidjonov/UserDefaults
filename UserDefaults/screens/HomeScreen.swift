//
//  HomeScreen.swift
//  UserDefaults
//
//  Created by Abduqaxxor on 5/4/22.
//

import SwiftUI

struct HomeScreen: View {
    
    init(){
        print(Defaults.loadUser())
        Defaults.storeUser(user: User(firstname: "Abdulaziz", lastname: "Xoliqov", email: "abdulaziz@gmail.com", phone: "+998983072349", address: "Tashkent Xavas st."))
        print(Defaults.loadUser())
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
