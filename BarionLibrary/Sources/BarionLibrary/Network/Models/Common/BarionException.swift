//
//  BarionException.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum BarionException: Error {
    case invalidUrl
    case invalidRequestBody
    case responseHttpError(error: String)
    case unknownError
    case invalidResponse
}
