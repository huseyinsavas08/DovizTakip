//
//  Rate.swift
//  DovizTakip
//
//  Created by Hüseyin Savaş on 1.07.2023.
//

import Foundation

struct Rate: Codable {
    var turkish: Double
    
    enum CodingKeys: String, CodingKey {
        case turkish = "TRY"
    }
}
