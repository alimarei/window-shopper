//
//  wage.swift
//  window-shopper
//
//  Created by ali  on 7.12.2018.
//  Copyright © 2018 ali . All rights reserved.
//

import Foundation
class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
