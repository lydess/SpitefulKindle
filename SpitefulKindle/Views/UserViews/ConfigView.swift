//
//  DebugView 2.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 29/12/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct ConfigView:View {
    @Binding var debugMode:Bool
    @Binding var kindleEmail:String
    var body: some View {
        VStack {
            Text("ConfigView")
            Spacer()
            List {
                Toggle("Enable Debug Mode", isOn: $debugMode)
                
                TextField("Kindle Email", text: $kindleEmail)
                    .keyboardType(.emailAddress)
                    .onSubmit {
                    print("done")
                }
                    
                
            
            }
            Spacer()
        }
    }
}



