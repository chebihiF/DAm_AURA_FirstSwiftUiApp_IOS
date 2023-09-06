//
//  ContentView.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 31/8/2023.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    var body: some View {
        
        // Can I hold a copy of the $ version of the nightWatchTasks instance ?
        let refNightWatchTasks = $nightWatchTasks
        
        NavigationView { // mise en place du system de navigation
            List{
                Section(header: TaskSectionHeader(symbolSystemName: "moon.stars.circle", headerText: "Nightly Tasks")){
                    
                    let tasksBinding = nightWatchTasks.nightlyTasks // tasks (NightlyTask)
                    let tasksIndices = tasksBinding.indices // indices 0, 1, 2
                    let taskIndexPaires =  Array(zip(tasksBinding, tasksIndices))
                    
                    ForEach(taskIndexPaires, id:\.0.id ,content: {
                        task, taskIndex in
                        
                        let tasksBinding = refNightWatchTasks.nightlyTasks
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding), label:{ TaskRow(task: task)})
                    })
                }
            
                
                Section(header: TaskSectionHeader(symbolSystemName: "sunset", headerText: "WEEKLY TASKS")){
                    
                    let tasksBinding = nightWatchTasks.weeklyTasks // tasks (NightlyTask)
                    let tasksIndices = tasksBinding.indices // indices 0, 1, 2
                    let taskIndexPaires =  Array(zip(tasksBinding, tasksIndices))
                    
                    ForEach(taskIndexPaires, id:\.0.id ,content: {
                        task, taskIndex in
                        
                        let tasksBinding = refNightWatchTasks.weeklyTasks
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding), label:{ TaskRow(task: task)})
                    })
                }
                
                Section(header:TaskSectionHeader(symbolSystemName: "calendar", headerText: "Monthly Tasks")){
                    
                    let tasksBinding = nightWatchTasks.monthlyTasks // tasks (NightlyTask)
                    let tasksIndices = tasksBinding.indices // indices 0, 1, 2
                    let taskIndexPaires =  Array(zip(tasksBinding, tasksIndices))
                    
                    ForEach(taskIndexPaires, id:\.0.id ,content: {
                        task, taskIndex in
                        
                        let tasksBinding = refNightWatchTasks.monthlyTasks
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        NavigationLink(
                            destination: DetailsView(task: theTaskBinding), label:{ TaskRow(task: task)})
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
        Group {
            ContentView(nightWatchTasks: NightWatchTasks())
            TaskRow(task: Task(name: "Check all doors", isComplete: true))
                .previewLayout(.fixed(width: 300, height: 70))
        }
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



struct TaskRow: View {
    let task: Task
    var body: some View {
        VStack{
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                    .strikethrough()
                }
            }else {
                HStack{
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}
