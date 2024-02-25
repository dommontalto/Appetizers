//
//  User.swift
//  Appetizers
//
//  Created by Dominic Montalto on 25/02/2024.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
