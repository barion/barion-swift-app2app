//
//  NameInformation.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

struct NameInformation: Decodable {
    var loginName: String?
    var firstName: String?
    var lastName: String?
    var organizationName: String?
    
    enum CodingKeys: String, CodingKey {
        case loginName = "LoginName"
        case firstName = "FirstName"
        case lastName = "LastName"
        case organizationName = "OrganizationName"
    }
}
