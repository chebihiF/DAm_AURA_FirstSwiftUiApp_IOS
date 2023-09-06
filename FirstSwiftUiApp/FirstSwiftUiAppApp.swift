//
//  FirstSwiftUiAppApp.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 31/8/2023.
//

import SwiftUI

@main
struct FirstSwiftUiAppApp: App {
   
    @StateObject private var nightWatchTasks = NightWatchTasks()
   
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
               
        }
    }
}
