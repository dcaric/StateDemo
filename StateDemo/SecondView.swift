//
//  SecondView.swift
//  StateDemo
//
//  Created by Dario Caric on 17/12/2023.
//

import SwiftUI

struct SecondView: View {
    
    @Binding var counter: Int
    @ObservedObject var sharedState: SharedState

    var body: some View {
        
        ZStack {
            VStack {
                Text("Hello, from Second View!")
                Spacer()
                Label(
                    title: { Text(counter.description) },
                    icon: { Image(systemName: "42.circle") }
                )
                Spacer()
                Button (action: {
                    counter += 1
                    sharedState.appState += 1
                }, label: {
                    Text("Counter")
                })
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    @State static var previewCounter = 0 // Add this line
    static var previews: some View {
        let sharedState = SharedState()
        SecondView(counter: $previewCounter, sharedState: sharedState)
    }
}
