//
//  FundingInformation.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct FundingInformation: Decodable {
    var bankCard: BankCard
    var authorizationCode: String
    var processResult: String
    
    enum CodingKeys: String, CodingKey {
        case bankCard = "BankCard"
        case authorizationCode = "AuthorizationCode"
        case processResult = "ProcessResult"
    }
}
