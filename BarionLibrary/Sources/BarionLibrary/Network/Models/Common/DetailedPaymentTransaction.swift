//
//  DetailedPaymentTransaction.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct DetailedPaymentTransaction: Decodable {
    var transactionId: String?
    var posTransactionId: String?
    var transactionTime: Date?
    var total: Decimal?
    var currency: Currency?
    var payer: UserInformation?
    var payee: UserInformation?
    var status: TransactionStatus?
    var transactionType: TransactionType?
    var items: [Item] = []
    var relatedId: String?
    
    enum CodingKeys: String, CodingKey {
        case transactionId = "TransactionId"
        case posTransactionId = "POSTransactionId"
        case transactionTime = "TransactionTime"
        case total = "Total"
        case currency = "Currency"
        case payer = "Payer"
        case payee = "Payee"
        case status = "Status"
        case transactionType = "TransactionType"
        case items = "Items"
        case relatedId = "RelatedId"
    }
}
