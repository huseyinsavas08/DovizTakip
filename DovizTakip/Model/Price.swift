//
//  Price.swift
//  DovizTakip
//
//  Created by Hüseyin Savaş on 30.06.2023.
//

import Foundation

struct Price: Codable {
    var name: String
    var result: Rate
    
    enum CodingKeys: String, CodingKey {
        case name = "base_code"
        case result = "conversion_rates"
    }
}
