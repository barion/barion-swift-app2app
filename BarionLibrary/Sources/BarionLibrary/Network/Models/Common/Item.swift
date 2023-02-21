//
//  Item.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct Item: Codable {
    var name: String?
    var description: String?
    var imageUrl: String?
    var quantity: Decimal?
    var unit: String?
    var unitPrice: Decimal?
    var itemTotal: Decimal?
    var sku: String?
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.imageUrl, forKey: .imageUrl)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
        try container.encode(self.itemTotal, forKey: .itemTotal)
        try container.encode(self.sku, forKey: .sku)
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case description = "Description"
        case imageUrl = "ImageUrl"
        case quantity = "Quantity"
        case unit = "Unit"
        case unitPrice = "UnitPrice"
        case itemTotal = "ItemTotal"
        case sku = "SKU"
    }
}
