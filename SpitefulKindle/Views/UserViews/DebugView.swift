//
//  DebugView.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 29/12/2024.
//

import Foundation
import SwiftUI
import SwiftData

struct DebugView:View {
    @Query var currentFics: [Fic]
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack{
            Button(action: {DataManager.shared.debugAddFic(model: modelContext,
                                                           name: "test",
                                                           url: URL(fileURLWithPath: ""),
                                                           author: "")}, label: {Text("add fics")})
            NavigationStack {
                List {
                    ForEach(currentFics) {fic in
                        HStack {Text(fic.name)}
                    }
                }
            }.navigationTitle("debug fics")
        }}
}
