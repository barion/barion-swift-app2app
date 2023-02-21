//
//  PurchaseInformation.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct PurchaseInformation: Codable {
    var deliveryTimeframe: DeliveryTimeframeType
    var deliveryEmailAddress: String
    var preOrderDate: Date
    var availabilityIndicator: AvailabilityIndicator
    var reOrderIndicator: ReOrderIndicator
    var shippingAddressIndicator: ShippingAddressIndicator
    var recurringExpiry: Date
    var recurringFrequency: Int
    var purchaseType: PurchaseType
    var giftCardPurchase: GiftCardPurchase
    var purchaseDate: Date
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(self.deliveryTimeframe, forKey: .deliveryTimeframe)
        try container.encode(self.deliveryEmailAddress, forKey: .deliveryEmailAddress)
        try container.encode(self.preOrderDate, forKey: .preOrderDate)
        try container.encode(self.availabilityIndicator, forKey: .availabilityIndicator)
        try container.encode(self.reOrderIndicator, forKey: .reOrderIndicator)
        try container.encode(self.shippingAddressIndicator, forKey: .shippingAddressIndicator)
        try container.encode(self.recurringExpiry, forKey: .recurringExpiry)
        try container.encode(self.recurringFrequency, forKey: .recurringFrequency)
        try container.encode(self.purchaseType, forKey: .purchaseType)
        try container.encode(self.giftCardPurchase, forKey: .giftCardPurchase)
        try container.encode(self.purchaseDate, forKey: .purchaseDate)
    }
    
    enum CodingKeys: String, CodingKey {
        case deliveryTimeframe = "DeliveryTimeframe"
        case deliveryEmailAddress = "DeliveryEmailAddress"
        case preOrderDate = "PreOrderDate"
        case availabilityIndicator = "AvailabilityIndicator"
        case reOrderIndicator = "ReOrderIndicator"
        case shippingAddressIndicator = "ShippingAddressIndicator"
        case recurringExpiry = "RecurringExpiry"
        case recurringFrequency = "RecurringFrequency"
        case purchaseType = "PurchaseType"
        case giftCardPurchase = "GiftCardPurchase"
        case purchaseDate = "PurchaseDate"
    }
}
