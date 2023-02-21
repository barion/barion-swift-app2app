//
//  PaymentTransaction.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct PaymentTransaction: Codable {
    var posTransactionId: String?
    var total: Decimal
    var payee: String
    var comment: String?
    var items: [Item] = []
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.posTransactionId, forKey: .posTransactionId)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.payee, forKey: .payee)
        try container.encode(self.comment, forKey: .comment)
        try container.encode(self.items, forKey: .items)
    }
    
    enum CodingKeys: String, CodingKey {
        case posTransactionId = "POSTransactionId"
        case total = "Total"
        case payee = "Payee"
        case comment = "Comment"
        case items = "Items"
    }
}
