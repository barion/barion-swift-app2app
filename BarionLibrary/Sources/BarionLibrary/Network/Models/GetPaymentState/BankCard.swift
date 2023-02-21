//
//  BankCard.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct BankCard: Decodable {
    var maskedPan: String
    var bankCardType: CardType
    var validThruYear: String
    var validThruMonth: String
    
    enum CodingKeys: String, CodingKey {
        case maskedPan = "MaskedPan"
        case bankCardType = "BankCardType"
        case validThruYear = "ValidThruYear"
        case validThruMonth = "ValidThruMonth"
    }
}
