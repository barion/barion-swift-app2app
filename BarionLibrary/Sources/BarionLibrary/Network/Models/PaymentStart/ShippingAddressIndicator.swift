//
//  ShippingAddressIndicator.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum ShippingAddressIndicator: String, Codable {
    case shipToCardholdersBillingAddress = "ShipToCardholdersBillingAddress"
    case shipToAnotherVerifiedAddress = "ShipToAnotherVerifiedAddress"
    case shipToDifferentAddress = "ShipToDifferentAddress"
    case shipToStore = "ShipToStore"
    case digitalGoods = "DigitalGoods"
    case travelAndEventTickets = "TravelAndEventTickets"
    case other = "Other"
}
