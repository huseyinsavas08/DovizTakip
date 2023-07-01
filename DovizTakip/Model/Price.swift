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
    var time: String
    
    enum CodingKeys: String, CodingKey {
        case name = "base_code"
        case result = "conversion_rates"
        case time = "time_last_update_utc"
    }
}
