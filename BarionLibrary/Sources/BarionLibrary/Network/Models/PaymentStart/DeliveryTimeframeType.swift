//
//  DeliveryTimeframeType.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum DeliveryTimeframeType: String, Codable {
    case electronicDelivery = "ElectronicDelivery"
    case sameDayShipping = "SameDayShipping"
    case overnightShipping = "OvernightShipping"
    case twoDayOrMoreShipping = "TwoDayOrMoreShipping"
}
