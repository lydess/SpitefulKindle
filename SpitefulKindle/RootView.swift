//
//  ContentView.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 28/12/2024.
//


import SwiftUI

struct RootView: View {
    @StateObject var stateHandler = StateManager()
   
    var body: some View {
        VStack {
            NavigationStack{
                NavigationLink("Debug", destination: DebugView())
                    .padding()
                NavigationLink("Config", destination: ConfigView(debugMode: $stateHandler.value, kindleEmail: $stateHandler.kindleEmail))
                    .padding()
                NavigationLink("Fics", destination: FicView())
                    .padding()
            }
            
            
        }
        .padding()
    }
}

#Preview {
    RootView()
}
