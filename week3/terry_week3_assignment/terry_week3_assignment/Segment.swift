//
//  Mode.swift
//  terry_week3_assignment
//
//  Created by 黃偉勛 Terry on 2019/1/21.
//  Copyright © 2019 Terry. All rights reserved.
//

import UIKit

enum Segment: Int {
    case login = 0
    case signup = 1
    
    var labelColor: UIColor {
        switch self {
        case .login:
            return .gray
        case .signup:
            return .black
        }
    }
    
    var textFieldColor: UIColor {
        switch self {
        case .login:
            return .gray
        case .signup:
            return .white
        }
    }
    
    var interaction: Bool {
        switch self {
        case .login:
            return false
        case .signup:
            return true
        }
    }
}
