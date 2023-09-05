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


struct TestView : View {
    @EnvironmentObject var theTask : Task
    var body: some View {
       /* TabView{ // Destination.Label
            DetailsView(taskName: "test task").tabItem {
                Text("Tab label 1")
                Image(systemName: "gear")
            }
            TaskSectionHeader(symbolSystemName: "moon.stars.circle", headerText: "Nightly Tasks").tabItem{Text("Tab label 2")}
            Text("Tab Content 3").tabItem{Text("Tab label 3")}
        }*/
        Group {
            VStack {
                HStack{
                    // Checkmark IF complete
                    Image(systemName: theTask.isComplete ? "checkmark.square" : "square")
                    Text("Mark Complete")
                }
                //ExtractedView(theTask: theTask)
                IntermediateSubView1()
            }
        }
    }
}

struct IntermediateSubView1 : View {
    
    var body: some View {
        IntermediateSubView2()
    }
}

struct IntermediateSubView2 : View {
   
    var body: some View {
        IntermediateSubView3()
    }
}

struct IntermediateSubView3 : View {
    
    var body: some View {
        IntermediateSubView4()
    }
}

struct IntermediateSubView4 : View {
 
    var body: some View {
        IntermediateSubView5()
    }
}

struct IntermediateSubView5 : View {
 
    var body: some View {
        ExtractedView()
    }
}

struct ExtractedView: View {
    @EnvironmentObject var theTask: Task
    var body: some View {
        VStack{
            Button(action: {
                theTask.isComplete = true // => IOS refresh UI (TheTask is @State)
            }){
                Text("Mark Complete")
                
            }.padding(.top)
            
            Button(action: {
                theTask.isComplete = false
            }){
                Text("Reset")
            }.padding(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let previewTask = Task(name: "check all windows", isComplete: false)
        TestView().environmentObject(previewTask)
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


