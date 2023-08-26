//
//  User.swift
//  UbergabefFirstPart
//
//  Created by Vitali Klopau on 22.08.2023.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
