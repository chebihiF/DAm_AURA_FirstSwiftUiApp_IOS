//
//  FirstSwiftUiAppApp.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 31/8/2023.
//

import SwiftUI

@main
struct FirstSwiftUiAppApp: App {
    
    @StateObject private var task = Task(name: "check all windows", isComplete: false)
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(task)
        }
    }
}
