//
//  TransactionStatus.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum TransactionStatus: String, Codable {
    case prepared = "Prepared"
    case started = "Started"
    case succeeded = "Succeeded"
    case timeout = "Timeout"
    case shopIsDeleted = "ShopIsDeleted"
    case shopIsClosed = "ShopIsClosed"
    case rejected = "Rejected"
    case rejectedByShop = "RejectedByShop"
    case storno = "Storno"
    case reserved = "Reserved"
    case deleted = "Deleted"
    case expired = "Expired"
    case authorized = "Authorized"
    case reversed = "Reversed"
    case invalidPaymentRecord = "InvalidPaymentRecord"
    case paymentTimeOut = "PaymentTimeOut"
    case invalidPaymentStatus = "InvalidPaymentStatus"
    case paymentSenderOrRecipientIsInvalid = "PaymentSenderOrRecipientIsInvalid"
    case unknown = "Unknown"
}
