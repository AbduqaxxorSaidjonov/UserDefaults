//
//  Defaults.swift
//  UserDefaults
//
//  Created by Abduqaxxor on 5/4/22.
//

import Foundation

struct Defaults{

    static let defaults = UserDefaults.standard
    
static func storeUser(user: User){
    let encoder = JSONEncoder()
    if let encodedUser = try? encoder.encode(user) {
        defaults.set(encodedUser,forKey: "user")
    }
}

static func loadUser() -> User!{
    if let savedUserData = defaults.object(forKey: "user") as? Data{
        let decoder = JSONDecoder()
        if let savedUser = try? decoder.decode(User.self, from: savedUserData) {
            return savedUser
        }
    }
    return nil
}
}
