struct PointsOfInterestResponse: Decodable {
    var title: String
    var items: [PointOfInterest]
}
