//
//  User.swift
//  BerealClone15
//
//  Created by Steven Luque on 2/12/25.
//

import Foundation
import ParseSwift

struct User: ParseUser {
    var emailVerified: Bool?
    
    var authData: [String : [String : String]?]?
    
    var originalData: Data?
    
    var createdAt: Date?
    
    var updatedAt: Date?
    
    var ACL: ParseSwift.ParseACL?
    
    var objectId: String?
    var username: String?
    var email: String?
    var password: String?
}

func signUp(username: String, password: String, email: String) {
    var newUser = User()
    newUser.username = username
    newUser.password = password
    newUser.email = email

    newUser.signup { result in
        switch result {
        case .success(let user):
            print("User signed up: \(user)")
        case .failure(let error):
            print("Signup failed: \(error.localizedDescription)")
        }
    }
}
func logIn(username: String, password: String) {
    User.login(username: username, password: password) { result in
        switch result {
        case .success(let user):
            print("User logged in: \(user)")
        case .failure(let error):
            print("Login failed: \(error.localizedDescription)")
        }
    }
}
func logOut() {
    User.logout { result in
        switch result {
        case .success:
            print("User logged out")
        case .failure(let error):
            print("Logout failed: \(error.localizedDescription)")
        }
    }
}

