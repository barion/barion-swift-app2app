//
//  BarionRepository.swift
//  BarionApp2AppExample
//
//  Created by László Takács on 2023. 02. 10..
//

import Foundation

public class BarionRepository {
    
    private var session = URLSession.shared
    private var decoder = JSONDecoder()
    
    func startPayment(posKey: String?, paymentStartRequest: PaymentStartRequest, environment: BarionEnvironment = .live) async throws -> PaymentStartResponse? {
        guard let url = URL(string: environment.prepareUrl(endpoint: .paymentStart)) else {
            throw BarionException.invalidUrl
        }
        var request = URLRequest(url: url)
        if let posKey = posKey {
            request.setValue(posKey, forHTTPHeaderField: "PosKey")
        }
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue("BarionApp2AppNativeExample", forHTTPHeaderField: "Agent")
        
        guard let body = try? JSONEncoder().encode(paymentStartRequest) else {
            throw BarionException.invalidRequestBody
        }
        request.httpMethod = "POST"
        request.httpBody = body
        
        var result: PaymentStartResponse?
        do {
            let (data, response) = try await session.data(for: request)
            result = try decoder.decode(PaymentStartResponse.self, from: data)
        } catch {
            throw BarionException.invalidResponse
        }
        return result
    }
    
    func getPaymentState(getPaymentStateRequest: GetPaymentStateRequest, environment: BarionEnvironment = .live) async throws -> GetPaymentStateResponse? {
        guard let url = URL(string: environment.prepareUrl(endpoint: .getPaymentState)) else {
            throw BarionException.invalidUrl
        }
        var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        urlComponents?.queryItems = [
            URLQueryItem(name: "PaymentId", value: getPaymentStateRequest.paymentId),
            URLQueryItem(name: "PosKey", value: getPaymentStateRequest.posKey)
        ]
        guard let fullUrl = urlComponents?.url else { throw BarionException.invalidUrl }
        
        var result: GetPaymentStateResponse?
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        self.decoder.dateDecodingStrategy = .formatted(dateFormatter)
        do {
            let (data, response) = try await session.data(from: fullUrl)
            result = try self.decoder.decode(GetPaymentStateResponse.self, from: data)
        } catch {
            throw BarionException.invalidResponse
        }
               
        return result
    }
}
