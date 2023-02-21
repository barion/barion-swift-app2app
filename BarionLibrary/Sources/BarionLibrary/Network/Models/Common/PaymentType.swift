//
//  PaymentType.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 20..
//

import Foundation

enum PaymentType: String, Codable {
    case immediate = "Immediate"
    case reservation = "Reservation"
    case delayedCapture = "DelayedCapture"
}
