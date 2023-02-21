//
//  GiftCardPurchase.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct GiftCardPurchase: Codable {
    var amount: Decimal
    var count: Int
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.count, forKey: .count)
    }
    
    enum CodingKeys: String, CodingKey {
        case amount = "Amount"
        case count = "Count"
    }
}
