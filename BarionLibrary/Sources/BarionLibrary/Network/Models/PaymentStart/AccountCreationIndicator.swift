//
//  AccountCreationIndicator.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum AccountCreationIndicator: String, Codable {
    case noAccount = "NoAccount"
    case createdDuringThisTransaction = "CreatedDuringThisTransaction"
    case lessThan30Days = "LessThan30Days"
    case between30And60Days = "Between30And60Days"
    case moreThan60Days = "MoreThan60Days"
}
