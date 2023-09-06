//
//  NightWatchTasks.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 5/9/2023.
//

import Foundation

class NightWatchTasks: ObservableObject {
    // DATA
    @Published var nightlyTasks = [
        Task(name: "Check all doors", isComplete: false),
        Task(name: "Check that the safe is locked", isComplete: false),
        Task(name: "Check the mailbox", isComplete: false),
        Task(name: "Inspect security cameras", isComplete: false),
        Task(name: "Clear ice from sidewalks", isComplete: false),
        Task(name: "Document \"strange and unusual\" occurrences", isComplete: false)
    ]

    @Published var weeklyTasks = [
        Task(name: "nightlyTasks", isComplete: false),
        Task(name: "Walk the perimeter of property", isComplete: false)]

    @Published var monthlyTasks = [
        Task(name: "Test security alarm", isComplete: false),
        Task(name: "Test motion detectors", isComplete: false),
        Task(name: "Test smoke alarms", isComplete: false)]
}
