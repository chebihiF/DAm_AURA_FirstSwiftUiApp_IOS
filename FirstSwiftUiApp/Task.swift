//
//  Task.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 4/9/2023.
//

import Foundation

struct Task : Identifiable {
    let id = UUID() // generate an random ID
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
