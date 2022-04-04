//
//  AddCoffeeOrderViewModel.swift
//  Coffee Ordering
//
//  Created by TheGIZzz on 4/4/2565 BE.
//

import Foundation

struct AddCoffeeOrderViewModel {
    
    var name: String?
    var email: String?
    
    var type: [String] {
        return CoffeeType.allCases.map {$0.rawValue.capitalized}
    }
    
    var size: [String] {
        return CoffeeSize.allCases.map {$0.rawValue.capitalized}
    }
}
