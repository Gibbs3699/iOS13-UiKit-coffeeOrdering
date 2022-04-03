//
//  Order.swift
//  Coffee Ordering
//
//  Created by TheGIZzz on 3/4/2565 BE.
//

import Foundation

enum CoffeeType: String, Codable {
    case cappuccino
    case latte
    case espressino
    case cortado
    
}

enum CoffeeSize: String, Codable {
    case small
    case medium
    case large
}

struct Order: Codable {
    let name: String
    let email: String
    let type: CoffeeSize
    let size: CoffeeType
}