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
        VStack {
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

struct ContentListView : View {
    var body: some View {
        NavigationView{
            
            NavigationLink(destination: HStack{
                Circle()
                Text("DestinationView")
            }.navigationTitle("Destination")
            ){
                Text("Go to the destination")
            }.navigationTitle("Home")
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

