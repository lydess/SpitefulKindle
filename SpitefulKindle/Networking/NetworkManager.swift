//
//  NetworkManager.swift
//  SpitefulKindle
//
//  Created by Emily Vise on 29/12/2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    func fetchfic(url:URL) async {
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        do {
            let (data,URLResponse) = try await URLSession.shared.data(for: request)
            print(URLResponse)
        } catch {
            print(error)
        }
        
        
        
    }
    //private func buildRequest(url:URL) -> URLRequest {
    //    UR
    //}
}
