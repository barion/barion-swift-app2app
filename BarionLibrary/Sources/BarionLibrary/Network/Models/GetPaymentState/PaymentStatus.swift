//
//  PaymentStatus.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum PaymentStatus: String, Codable {
    case prepared = "Prepared"
    case started = "Started"
    case inProgress = "InProgress"
    case waiting = "Waiting"
    case reserved = "Reserved"
    case authorized = "Authorized"
    case canceled = "Canceled"
    case succeeded = "Succeeded"
    case failed = "Failed"
    case partiallySucceeded = "PartiallySucceeded"
    case expired = "Expired"
}
