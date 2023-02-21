public struct BarionLibrary {
    public let repository = BarionRepository()

    public init() {
        
    }
    
    public func paymentStart(posKey: String?, paymentStartRequest: PaymentStartRequest, environment: BarionEnvironment = .live) async throws -> PaymentStartResponse? {
        return try await repository.startPayment(posKey: posKey, paymentStartRequest: paymentStartRequest)
    }
    
    public func getPaymentState(getPaymentStateRequest: GetPaymentStateRequest, environment: BarionEnvironment = .live) async throws -> GetPaymentStateResponse? {
        return try await repository.getPaymentState(getPaymentStateRequest: getPaymentStateRequest)
    }
}
