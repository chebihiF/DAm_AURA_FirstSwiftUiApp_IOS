//
//  Task.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 4/9/2023.
//

import Foundation

class Task : ObservableObject { 
    
    let name: String
    @Published var isComplete: Bool // can use it in external struct/class
    var lastCompleted: Date?
    
    // constructeur 
    internal init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
}
