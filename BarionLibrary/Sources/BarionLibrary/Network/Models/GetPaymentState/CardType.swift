//
//  BankCardType.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum CardType: String, Codable {
case mastercard = "MasterCard"
    case visa = "Visa"
    case americanExpress = "AmericanExpress"
    case electron = "Electron"
    case maestro = "Maestro"
    case dinersClub = "DinersClub"
    case discover = "Discover"
    case unknown = "Unknown"
}
