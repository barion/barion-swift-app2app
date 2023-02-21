//
//  RecurrenceResult.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum RecurrenceResult: String, Codable {
    case none = "None"
    case successful = "Successful"
    case failed = "Failed"
    case notFound = "NotFound"
    case threeDsAuthenticationRequired = "ThreeDSAuthenticationRequired"
}
