//
//  FirstView.swift
//  StateDemo
//
//  Created by Dario Caric on 16/12/2023.
//

import SwiftUI

struct FirstView: View {
    
    @Binding var counter: Int
    @ObservedObject var sharedState: SharedState

    var body: some View {
        ZStack {
            VStack {
                Text("Hello, from First View!")
                Spacer()
                Label(
                    title: { Text(counter.description) },
                    icon: { Image(systemName: "42.circle") }
                )
                Spacer()
                Label(
                    title: { Text(sharedState.appState.description) },
                    icon: { /*@START_MENU_TOKEN@*/Image(systemName: "42.circle")/*@END_MENU_TOKEN@*/ }
                )
                Spacer()
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    @State static var previewCounter = 0 // Add this line
    static var previews: some View {
        let sharedState = SharedState()
        FirstView(counter: $previewCounter, sharedState: sharedState) // Modify this line
    }
}
