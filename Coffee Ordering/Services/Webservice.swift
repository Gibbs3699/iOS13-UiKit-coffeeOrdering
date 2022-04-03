//
//  Webservice.swift
//  Coffee Ordering
//
//  Created by TheGIZzz on 3/4/2565 BE.
//

import Foundation

enum NetworkError: Error {
    case decodingError
    case domainError
    case urlError
}

struct Resource<T: Codable> {
    let url: URL
}

class Webservice {
    func load<T>(resource: Resource<T>, completion: @escaping (Result<T, NetworkError>) -> Void) {
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            guard let data = data, error == nil else {
                completion(.failure(.domainError))
                return
            }
            
            let result = try? JSONDecoder().decode(T.self, from: data)
            if let result = result {
                DispatchQueue.main.sync {
                    completion(.success(result))
                }
            }else {
                completion(.failure(.decodingError))
            }
        }.resume()
    }
}
