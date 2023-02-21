//
//  ProcessedTransaction.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct ProcessedTransaction: Decodable {
    var posTransactionId: String?
    var transactionId: String
    var status: TransactionStatus
    var currency: Currency
    //var transactionTime: Date?
    
    enum CodingKeys: String, CodingKey {
        case posTransactionId = "POSTransactionId"
        case transactionId = "TransactionId"
        case status = "Status"
        case currency = "Currency"
      //  case transactionTime = "TransactionTime"
    }
}
