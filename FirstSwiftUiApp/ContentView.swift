//
//  ContentView.swift
//  FirstSwiftUiApp
//
//  Created by CHEBIHI FAYCAL on 31/8/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading) {
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
                    }
                    
                    Text("Check all doors")
                    Text("Check that the safe is locked")
                    Text("Check the mailbox")
                    Text("Inspect security cameras")
                    Text("Clear ice from sidewalks")
                    Text("Document \"strange and unusual\" occurrences")
                    
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
                    }
                    Text("Check inside all vacant rooms")
                    
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
        ContentView()
    }
}

