//
//  ChallengePreference.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum ChallengePreference: String, Codable {
    case noPreference = "NoPreference"
    case challengeRequired = "ChallengeRequired"
    case noChallengeNeeded = "NoChallengeNeeded"
}
