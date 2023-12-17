//
//  ContentView.swift
//  StateDemo
//
//  Created by Dario Caric on 16/12/2023.
//

import SwiftUI
    

struct ContentView: View {
    @State private var counter = 0 
    @StateObject var sharedState = SharedState()

    //@State private var firstView = FirstView(counter: $counter)
    //@State private var secondView = SecondView()

    
    var body: some View {
        TabView{
            
            // Tab 1
            ZStack {
                //firstView
                FirstView(counter: $counter, sharedState: sharedState)
            }
            .tabItem {
                Label("First", systemImage: "character.bubble")
            }
            .tag(1)
            .padding()
            
            // Tab 2
            ZStack {
                SecondView(counter: $counter, sharedState: sharedState)
            }
            .tabItem {
                Label("Second", systemImage: "character.bubble")
            }
            .tag(1)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
