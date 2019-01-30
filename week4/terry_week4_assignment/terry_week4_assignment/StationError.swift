//
//  StationError.swift
//  terry_week4_assignment
//
//  Created by 黃偉勛 Terry on 2019/1/30.
//  Copyright © 2019 Terry. All rights reserved.
//

import Foundation

enum StationError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case parsingFailure
}

