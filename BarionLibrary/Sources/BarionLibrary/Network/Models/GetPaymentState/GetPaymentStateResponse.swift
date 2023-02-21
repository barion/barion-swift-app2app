//
//  GetPaymentStateResponse.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

public struct GetPaymentStateResponse: Decodable {
    
    var paymentId: String?
    var paymentRequestId: String?
    var posId: String?
    var posName: String?
    var posOwnerEmail: String?
    var posOwnerCountry: String?
    var status: PaymentStatus?
    var paymentType: String?
    var allowedFundingSources: [String]?
    var fundingSource: String?
    var fundingInformation: FundingInformation?
    var recurrenceType: RecurrenceType?
    var traceId: String?
    var guestCheckout: Bool?
    var createdAt: Date?
    var startedAt: Date?
    var validUntil: Date?
    var completedAt: Date?
    var reservedUntil: Date?
    var delayedCaptureUntil: Date?
    var transactions: [DetailedPaymentTransaction]?
    var total: Decimal?
    var currency: Currency?
    var suggestedLocale: String?
    var fraudRiskScore: Int?
    var callbackUrl: String?
    var redirectUrl: String?
    
    public enum CodingKeys: String, CodingKey {
        case paymentId = "PaymentId"
        case paymentRequestId = "PaymentRequestId"
        case posId = "POSId"
        case posName = "POSName"
        case posOwnerEmail = "POSOwnerEmail"
        case posOwnerCountry = "POSOwnerCountry"
        case status = "Status"
        case paymentType = "PaymentType"
        case allowedFundingSources = "AllowedFundingSources"
        case fundingSource = "FundingSource"
        case fundingInformation = "FundingInformation"
        case recurrenceType = "RecurrenceType"
        case traceId = "TraceId"
        case guestCheckout = "GuestCheckout"
        case createdAt = "CreatedAt"
        case startedAt = "StartedAt"
        case completedAt = "CompletedAt"
        case validUntil = "ValidUntil"
        case reservedUntil = "ReservedUntil"
        case delayedCaptureUntil = "DelayedCaptureUntil"
        case transactions = "Transactions"
        case total = "Total"
        case currency = "Currency"
        case suggestedLocale = "SuggestedLocale"
        case fraudRiskScore = "FraudRiskScore"
        case callbackUrl = "CallbackUrl"
        case redirectUrl = "RedirectUrl"
    }
}
