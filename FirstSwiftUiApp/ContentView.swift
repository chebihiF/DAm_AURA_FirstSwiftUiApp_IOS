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
        VStack{
            HStack{
                VStack(alignment: .leading) {
                    //MARK: Nightly Taskes
                    Group {
                        HStack{
                            Text(Image(systemName: "moon.stars.circle"))
                                .font(.title2)
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                                
                            Text("Nightly Tasks")
                                .font(.title3)
                                .foregroundColor(.blue)
                                .fontWeight(.heavy)
                                .textCase(.uppercase)
                                .underline()
                        }
                        Text("Check all doors")
                        Text("Check that the safe is locked")
                        Text("Check the mailbox")
                        Text("Inspect security cameras")
                        Text("Clear ice from sidewalks")
                        Text("Document \"strange and unusual\" occurrences")
                    }
                    
                    //MARK: WEEKLY TASKS
                    Group{
                        Divider()
                        HStack (alignment:.bottom){
                            Text(Image(systemName: "sunset"))
                                .font(.title2)
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                            
                            Text("WEEKLY TASKS")
                                .font(.title3)
                                .foregroundColor(.blue)
                                .fontWeight(.heavy)
                                .padding(.top)
                                .textCase(.uppercase)
                                .underline()
                        }
                        Text("Check inside all vacant rooms")
                        Text("Walk the perimeter of property")
                    }
                    
                    // MARK: Monthly Tasks
                    // TODO: add more tasks
                    // FIXME: This is broken
                    Group{
                        Divider()
                        HStack(alignment:.bottom){
                            Text(Image(systemName:"calendar"))
                                .font(.title2)
                                .foregroundColor(.blue)
                                .fontWeight(.bold)
                            
                            Text("Monthly Tasks")
                                .font(.title3)
                                .foregroundColor(.blue)
                                .fontWeight(.heavy)
                                .padding(.top)
                                .textCase(.uppercase)
                                .underline()
                      
                        }
                        Text("Test security alarm")
                        Text("Test motion detectors")
                        Text("Test smoke alarms")
                    }
                }
                .padding([.top, .leading])
                .foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Spacer()
        }
    }
}

struct ContentListView : View {
    var body: some View {
        
        // data : nightlyTasks, id: identifiant de chaque élement de la list, rowCount: View qui represente chaque element de la liste
        VStack {
            
            /*List(nightlyTasks,id: \.self ,rowContent: {
            taskName in Text(taskName)
            })*/
            List{
                Section(header:
                            HStack{
                                Text(Image(systemName: "moon.stars.circle"))
                                Text("Nightly Tasks")
                            }.font(.title2)
                ){
                    ForEach(nightlyTasks,id: \.self ,content: {
                        taskName in
                        Text(taskName)
                    })
                }
                
                Section(header:
                            HStack{
                                Text(Image(systemName: "sunset"))
                                Text("WEEKLY TASKS")
                            }.font(.title2)
                ){
                    ForEach(weeklyTasks,id: \.self ,content: {
                        taskName in
                        Text(taskName)
                    })
                }
                    
                Section(header:
                            HStack{
                                Text(Image(systemName: "calendar"))
                                Text("Monthly Tasks")
                            }.font(.title2)){
                    ForEach(monthlyTasks,id: \.self ,content: {
                        taskName in
                        Text(taskName)
                    })
                }
            }
        }
        
        
        
    }
}

/*
struct SpaceLayuout : View {
    var body: some View {
        VStack{
            Circle()
            Rectangle()
            HStack {
                Circle()
                Text("Test")
            }
        }
    }
}


struct LayoutManager: View {
    var body: some View {
        VStack {
            Circle()
            Rectangle()
            HStack {
                RoundedRectangle(cornerRadius: 25.0)
                Text("Hello World")
                VStack {
                    Circle()
                    Rectangle()
                    Circle()
                }
            }
        }
    }
}
 */


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentListView()
    }
}

