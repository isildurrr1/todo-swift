//
//  User.swift
//  todo-swift
//
//  Created by Андрей Ромашев on 12.12.2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
