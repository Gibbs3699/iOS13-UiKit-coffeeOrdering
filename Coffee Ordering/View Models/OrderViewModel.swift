//
//  OrderViewModel.swift
//  Coffee Ordering
//
//  Created by TheGIZzz on 4/4/2565 BE.
//

import Foundation

class OrderListViewModel {

    var ordersViewModel: [OrderViewModel]
    
    init() {
        self.ordersViewModel = [OrderViewModel]() //empty array
    }
}

extension OrderListViewModel {
    func orderViewModel(at index: Int) -> OrderViewModel {
        return self.ordersViewModel[index]
    }
}

struct OrderViewModel {
    let order: Order
}

extension OrderViewModel {
    
    var name : String {
        return self.order.name
    }
    
    var email : String {
        return self.order.email
    }
    
    var type : String {
        return self.order.type.rawValue.capitalized
    }
    
    var size : String {
        return self.order.size.rawValue.capitalized
    }
}
