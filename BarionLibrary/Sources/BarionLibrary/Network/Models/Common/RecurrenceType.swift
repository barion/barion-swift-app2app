//
//  RecurrenceType.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum RecurrenceType: String, Codable {
    case oneClickPayment = "OneClickPayment"
    case merchantInitiatedPayment = "MerchantInitiatedPayment"
    case recurringPayment = "RecurringPayment"
}
