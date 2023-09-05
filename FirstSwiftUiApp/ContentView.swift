//
//  ContentView.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 31/8/2023.
//

import SwiftUI

let nightlyTasks = [
    "Check all doors",
    "Check that the safe is locked",
    "Check the mailbox",
    "Inspect security cameras",
    "Clear ice from sidewalks",
    "Document \"strange and unusual\" occurrences"
]

let weeklyTasks = ["nightlyTasks","Walk the perimeter of property"]

let monthlyTasks = ["Test security alarm","Test motion detectors","Test smoke alarms"]

struct ContentView: View {
    var body: some View {
        NavigationView { // mise en place du system de navigation
            List{
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars.circle", headerText: "Nightly Tasks")){
                    ForEach(nightlyTasks,id: \.self ,content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName) )
                        // créer un lien de navigation ver une destination
                    })
                }
                
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "WEEKLY TASKS")){
                    ForEach(weeklyTasks,id: \.self ,content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    })
                }
                
                Section(header:TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")){
                    ForEach(monthlyTasks,id: \.self ,content: {
                        taskName in
                        NavigationLink(taskName, destination: DetailsView(taskName: taskName))
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    var body: some View {
        HStack{
            Text(Image(systemName: symbolSystemName))
            Text(headerText)
        }.font(.title2)
    }
}

struct DetailsView: View {
    let taskName: String
    var body: some View {
        VStack{
            Text(taskName)
            Text("Placeholder for task description")
            Text("Placeholder for complete button")
        }
    }
}


