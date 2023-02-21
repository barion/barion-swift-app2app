//
//  PayerAccountInformation.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct PayerAccountInformation: Codable {
    var accountId: String
    var accountCreated: Date
    var accountCreationIndicator: AccountCreationIndicator
    var accountLastChanged: Date
    var accountChangeIndicator: AccountChangeIndicator
    var passwordLastChanged: Date
    var passwordChangeIndicator: PasswordChangeIndicator
    var purchasesInTheLast6Months: Int
    var shippingAddressAdded: Date
    var shippingAddressUsageIndicator: ShippingAddressUsageIndicator
    var provisionAttempts: Int
    var transactionalActivityPerDay: Int
    var transactionActivityPerYear: Int
    var paymentMethodAdded: Date
    var suspiciousActivityIndicator: SuspiciousActivityIndicator
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encode(self.accountCreated, forKey: .accountCreated)
        try container.encode(self.accountCreationIndicator, forKey: .accountCreationIndicator)
        try container.encode(self.accountLastChanged, forKey: .accountLastChanged)
        try container.encode(self.accountChangeIndicator, forKey: .accountChangeIndicator)
        try container.encode(self.passwordLastChanged, forKey: .passwordLastChanged)
        try container.encode(self.passwordChangeIndicator, forKey: .passwordChangeIndicator)
        try container.encode(self.purchasesInTheLast6Months, forKey: .purchasesInTheLast6Months)
        try container.encode(self.shippingAddressAdded, forKey: .shippingAddressAdded)
        try container.encode(self.shippingAddressUsageIndicator, forKey: .shippingAddressUsageIndicator)
        try container.encode(self.provisionAttempts, forKey: .provisionAttempts)
        try container.encode(self.transactionalActivityPerDay, forKey: .transactionalActivityPerDay)
        try container.encode(self.transactionActivityPerYear, forKey: .transactionActivityPerYear)
        try container.encode(self.paymentMethodAdded, forKey: .paymentMethodAdded)
        try container.encode(self.suspiciousActivityIndicator, forKey: .suspiciousActivityIndicator)
    }
    
    enum CodingKeys: String, CodingKey {
        case accountId = "AccountId"
        case accountCreated = "AccountCreated"
        case accountCreationIndicator = "AccountCreationIndicator"
        case accountLastChanged = "AccountLastChanged"
        case accountChangeIndicator = "AccountChangeIndicator"
        case passwordLastChanged = "PasswordLastChanged"
        case passwordChangeIndicator = "PasswordChangeIndicator"
        case purchasesInTheLast6Months = "PurchasesInTheLast6Months"
        case shippingAddressAdded = "ShippingAddressAdded"
        case shippingAddressUsageIndicator = "ShippingAddressUsageIndicator"
        case provisionAttempts = "ProvisionAttempts"
        case transactionalActivityPerDay = "TransactionalActivityPerDay"
        case transactionActivityPerYear = "TransactionalActivityPerYear"
        case paymentMethodAdded = "PaymentMethodAdded"
        case suspiciousActivityIndicator = "SuspiciousActivityIndicator"
    }
}
