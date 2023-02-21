//
//  V2Error.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 20..
//

import Foundation

struct V2Error: Decodable {
    var title: String
    var description: String
    var errorCode: String
    var happenedAt: String
    var authData: String?
    var endpoint: String?
    
    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case description = "Description"
        case errorCode = "ErrorCode"
        case happenedAt = "HappenedAt"
        case authData = "AuthData"
        case endpoint = "Endpoint"
    }
}
