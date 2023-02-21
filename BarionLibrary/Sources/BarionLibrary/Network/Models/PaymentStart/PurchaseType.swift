//
//  PurchaseType.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum PurchaseType: String, Codable {
    case goodsAndServicePurchase = "GoodsAndServicePurchase"
    case checkAcceptance = "CheckAcceptance"
    case accountFunding = "AccountFunding"
    case quasiCashTransaction = "QuasiCashTransaction"
    case prePaidVacationAndLoan = "PrePaidVacationAndLoan"
}
