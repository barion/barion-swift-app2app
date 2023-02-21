//
//  PaymentStartResponse.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

public struct PaymentStartResponse: Decodable {
    var paymentId: String?
    var paymentRequestId: String?
    var status: PaymentStatus?
    var qrUrl: String?
    var recurrenceResult: RecurrenceResult?
    var transactions: [ProcessedTransaction]?
    var gatewayUrl: String?
    var callbackUrl: String?
    var redirectUrl: String?
    var threeDsAuthClientData: String?
    var traceId: String?
    var errors: [V2Error]?
    
    enum CodingKeys: String, CodingKey {
        case paymentId = "PaymentId"
        case paymentRequestId = "PaymentRequestId"
        case status = "Status"
        case qrUrl = "QRUrl"
        case recurrenceResult = "RecurrenceResult"
        case transactions = "Transactions"
        case gatewayUrl = "GatewayUrl"
        case callbackUrl = "CallbackUrl"
        case redirectUrl = "RedirectUrl"
        case threeDsAuthClientData = "ThreeDSAuthClientData"
        case traceId = "TraceId"
        case errors = "Errors"
    }
}
