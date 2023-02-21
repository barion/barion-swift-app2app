//
//  PaymentStartRequest.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

public struct PaymentStartRequest: Codable {
    
    
    var posKey: String
    var paymentType: PaymentType
    var reservationPeriod: Date?
    var delayedCapturePeriod: Date?
    var paymentWindow: Date?
    var guestCheckout: Bool = true
    var initiateRecurrence: Bool?
    var recurrenceId: String?
    var fundingSources: [FundingSource]
    var paymentRequestId: String?
    var payerHint: String?
    var cardHolderNameHint: String?
    var recurrenceType: RecurrenceType?
    var traceId: String?
    var redirectUrl: String?
    var callbackUrl: String?
    var transactions: [PaymentTransaction]
    var orderNumber: String?
    var shippingAddress: ShippingAddress?
    var locale: String?
    var currency: Currency
    var payerPhoneNumber: String?
    var payerWorkPhoneNumber: String?
    var payerHomeNumber: String?
    var billingAddress: BillingAddress?
    var payerAccountInformation: PayerAccountInformation?
    var purchaseInformation: PurchaseInformation?
    var challengePreference: ChallengePreference?
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.posKey, forKey: .posKey)
        try container.encode(self.paymentType, forKey: .paymentType)
        try container.encodeIfPresent(self.reservationPeriod, forKey: .reservationPeriod)
        try container.encodeIfPresent(self.delayedCapturePeriod, forKey: .delayedCapturePeriod)
        try container.encodeIfPresent(self.paymentWindow, forKey: .paymentWindow)
        try container.encode(self.guestCheckout, forKey: .guestCheckout)
        try container.encodeIfPresent(self.initiateRecurrence, forKey: .initiateRecurrence)
        try container.encodeIfPresent(self.recurrenceId, forKey: .recurrenceId)
        try container.encode(self.fundingSources, forKey: .fundingSources)
        try container.encodeIfPresent(self.paymentRequestId, forKey: .paymentRequestId)
        try container.encodeIfPresent(self.payerHint, forKey: .payerHint)
        try container.encodeIfPresent(self.cardHolderNameHint, forKey: .cardHolderNameHint)
        try container.encodeIfPresent(self.recurrenceType, forKey: .recurrenceType)
        try container.encodeIfPresent(self.traceId, forKey: .traceId)
        try container.encodeIfPresent(self.redirectUrl, forKey: .redirectUrl)
        try container.encodeIfPresent(self.callbackUrl, forKey: .callbackUrl)
        try container.encode(self.transactions, forKey: .transactions)
        try container.encodeIfPresent(self.orderNumber, forKey: .orderNumber)
        try container.encodeIfPresent(self.shippingAddress, forKey: .shippingAddress)
        try container.encodeIfPresent(self.locale, forKey: .locale)
        try container.encode(self.currency, forKey: .currency)
        try container.encodeIfPresent(self.payerPhoneNumber, forKey: .payerPhoneNumber)
        try container.encodeIfPresent(self.payerWorkPhoneNumber, forKey: .payerWorkPhoneNumber)
        try container.encodeIfPresent(self.payerHomeNumber, forKey: .payerHomeNumber)
        try container.encodeIfPresent(self.billingAddress, forKey: .billingAddress)
        try container.encodeIfPresent(self.payerAccountInformation, forKey: .payerAccountInformation)
        try container.encodeIfPresent(self.purchaseInformation, forKey: .purchaseInformation)
        try container.encodeIfPresent(self.challengePreference, forKey: .challengePreference)
    }
    
    enum CodingKeys: String, CodingKey {
        case posKey = "POSKey"
        case paymentType = "PaymentType"
        case reservationPeriod = "ReservationPeriod"
        case delayedCapturePeriod = "DelayedCapturePeriod"
        case paymentWindow = "PaymentWindow"
        case guestCheckout = "GuestCheckout"
        case initiateRecurrence = "InitiateRecurrence"
        case recurrenceId = "RecurrenceId"
        case fundingSources = "FundingSources"
        case paymentRequestId = "PaymentRequestId"
        case payerHint = "PayerHint"
        case cardHolderNameHint = "CardHolderNameHint"
        case recurrenceType = "RecurrenceType"
        case traceId = "TraceId"
        case redirectUrl = "RedirectUrl"
        case callbackUrl = "CallbackUrl"
        case transactions = "Transactions"
        case orderNumber = "OrderNumber"
        case shippingAddress = "ShippingAddress"
        case locale = "Locale"
        case currency = "Currency"
        case payerPhoneNumber = "PayerPhoneNumber"
        case payerWorkPhoneNumber = "PayerWorkPhoneNumber"
        case payerHomeNumber = "PayerHomeNumber"
        case billingAddress = "BillingAddress"
        case payerAccountInformation = "PayerAccountInformation"
        case purchaseInformation = "PurchaseInformation"
        case challengePreference = "ChallengePreference"
    }
}
