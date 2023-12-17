//
//  SharedState.swift
//  StateDemo
//
//  Created by Dario Caric on 17/12/2023.
//

import Foundation


public class SharedState: ObservableObject {
    //static let shared = SharedState()

    @Published var appState: Int = 0
    
    //private init() {} // Make the initializer private to prevent other instances

}
