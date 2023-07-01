//
//  NetworkController.swift
//  DovizTakip
//
//  Created by Hüseyin Savaş on 30.06.2023.
//

import Foundation

class NetworkController {
    
    func getData(rate: String, completion: @escaping (Price) -> Void) {
        let request = URLRequest(url: URL(string: "https://v6.exchangerate-api.com/v6/e3b4b5348ff316703c0c98ae/latest/\(rate)")!)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else { return }
            let result = try! JSONDecoder().decode(Price.self, from: data)
            completion(result)
        }.resume()
    }
}
