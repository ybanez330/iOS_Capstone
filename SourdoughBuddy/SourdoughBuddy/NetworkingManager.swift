//
//  NetworkingManager.swift
//  SourdoughBuddy
//
//  Created by Julia Ybanez on 4/22/24.
//

import SwiftUI
import Foundation

enum NetworkError: Error {
    case invalidResponse
    case noData
    case decodingError(Error)
}

class NetworkingManager {
    static let shared = NetworkingManager()
    
    func fetchData<T: Decodable>(from url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completion(.failure(NetworkError.invalidResponse))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedData))
            } catch {
                completion(.failure(NetworkError.decodingError(error)))
            }
        }.resume()
    }
}
