//
//  FundingSource.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum FundingSource: String, Codable {
    case all = "All"
    case balance = "Balance"
    case bankCard = "BankCard"
    case googlePay = "GooglePay"
    case applePay = "ApplePay"
    case bankTransfer = "BankTransfer"
}
