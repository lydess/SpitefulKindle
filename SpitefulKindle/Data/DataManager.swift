//
//  DataManager.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 29/12/2024.
//

import Foundation
import SwiftData
class DataManager {
    static let shared = DataManager()
    func debugAddFic(model:ModelContext,name:String,url:URL,author:String) {
        model.insert(Fic(name: name, url: url, author: author))
    }
        
    
}
@Model
class Fic {
    var name:String
    var url:URL
    var author:String
    
    init(name: String, url: URL, author: String) {
        self.name = name
        self.url = url
        self.author = author
    }
    
}



