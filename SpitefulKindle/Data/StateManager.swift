//
//  StateManager.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 29/12/2024.
//

import Foundation

class StateManager:ObservableObject {
    @Published var value = false
    @Published var kindleEmail = ""
}
