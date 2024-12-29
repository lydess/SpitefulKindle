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
    @State var isfetching: Bool = false
    var body: some View {
        VStack{
            HStack{
                Button(action: {DataManager.shared.debugAddFic(model: modelContext,
                                                               name: "test",
                                                               url: URL(fileURLWithPath: ""),
                                                               author: "", data: Data())}, label: {Text("add fics")})
                Button(action: {isfetching.toggle()}, label: {Text("get fics")})
            }
            if isfetching {
                ProgressView().progressViewStyle(.circular)
                    .task {
                        guard let url = URL(string: "https://archiveofourown.org/works/59645299/chapters/155441821") else {return}
                        await NetworkManager.shared.fetchfic(url: url)
                        print("foudn it!")
                        isfetching.toggle()
                    
                    }
            }
            
            
            NavigationStack {
                List {
                    ForEach(currentFics) {fic in
                        HStack {Text(fic.name)}
                    }
                }
            }.navigationTitle("debug fics")
        }}
}
