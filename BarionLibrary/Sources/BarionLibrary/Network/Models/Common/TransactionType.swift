//
//  TransactionType.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

enum TransactionType: String, Codable {
    case shop = "Shop"
    case transferToExistingUser = "TransferToExistingUser"
    case transferToTechnicalAccount = "TransferToTechnicalAccount"
    case reserve = "Reserve"
    case stornoReserve = "StornoReserve"
    case cardProcessingFee = "CardProcessingFee"
    case gatewayFee = "GatewayFee"
    case cardProcessingFeeStorno = "CardProcessingFeeStorno"
    case unspecified = "Unspecified"
    case cardPayment = "CardPayment"
    case refund = "Refund"
    case refundToBankCard = "RefundToBankCard"
    case stornoUnSuccessfulRefundToBankCard = "StornoUnSuccessfulRefundToBankCard"
    case underReview = "UnderReview"
    case releaseReview = "ReleaseReview"
    case bankTransferPayment = "BankTransferPayment"
    case refundToBankAccount = "RefundToBankAccount"
    case stornoUnSuccessfulRefundToBankAccount = "StornoUnSuccessfulRefundToBankAccount"
    case bankTransferPaymentFee = "BankTransferPaymentFee"
 }
