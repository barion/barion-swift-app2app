//
//  UserInformation.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct UserInformation: Decodable {
    var name: NameInformation?
    var email: String?
    
    enum CodingKeys: String, CodingKey {
        case name = "Name"
        case email = "Email"
    }
}
