//
//  ShippingAddress.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct ShippingAddress: Codable {
    var country: String
    var city: String
    var region: String
    var zip: String
    var street: String
    var street2: String
    var street3: String
    var fullName: String
    

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.city, forKey: .city)
        try container.encode(self.region, forKey: .region)
        try container.encode(self.zip, forKey: .zip)
        try container.encode(self.street, forKey: .street)
        try container.encode(self.street2, forKey: .street2)
        try container.encode(self.street3, forKey: .street3)
        try container.encode(self.fullName, forKey: .fullName)
    }

    enum CodingKeys: String, CodingKey {
        case country = "Country"
        case city = "City"
        case region = "Region"
        case zip = "Zip"
        case street = "Street"
        case street2 = "Street2"
        case street3 = "Street3"
        case fullName = "FullName"
    }
}
