//
//  LoginValidator.swift
//  DemoCICDApp
//
//  Created by Saurabh Mishra on 22/10/26.
//

import Foundation

struct LoginValidator{
    func isValid(email: String, password: String) -> Bool{
        email.contains("@") && password.count >= 8
    }
}
