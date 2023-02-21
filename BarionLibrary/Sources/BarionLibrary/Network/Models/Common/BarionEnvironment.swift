//
//  BarionEnvironment.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

public enum BarionEnvironment {
    case test
    case live
}

enum BarionEndPoint: String, Codable {
    case paymentStart = "/v2/payment/start"
    case getPaymentState = "/v2/payment/getPaymentState"
}

let API_BASE_LIVE = "https://api.barion.com"
let API_BASE_TEST = "https://api.test.barion.com"

extension BarionEnvironment {
    func prepareUrl(endpoint: BarionEndPoint) -> String {
        switch self {
        case .test:
            return API_BASE_TEST + endpoint.rawValue
        default:
            return API_BASE_LIVE + endpoint.rawValue
        }
    }
}
