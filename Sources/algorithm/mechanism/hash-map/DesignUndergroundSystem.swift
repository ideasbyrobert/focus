public final class UndergroundSystem
{
    private var activeTripsByCustomer: [Int: (station: String, time: Int)] = [:]
    private var statisticsByRoute: [String: (totalTime: Int, tripCount: Int)] = [:]

    public init()
    {
    }

    public func checkIn(_ id: Int, _ stationName: String, _ t: Int)
    {
        activeTripsByCustomer[id] = (stationName, t)
    }

    public func checkOut(_ id: Int, _ stationName: String, _ t: Int)
    {
        guard let trip = activeTripsByCustomer.removeValue(forKey: id) else
        {
            return
        }

        let route = routeKey(from: trip.station, to: stationName)
        let duration = t - trip.time
        let statistics = statisticsByRoute[route] ?? (0, 0)

        statisticsByRoute[route] = (statistics.totalTime + duration, statistics.tripCount + 1)
    }

    public func getAverageTime(_ startStation: String, _ endStation: String) -> Double
    {
        let route = routeKey(from: startStation, to: endStation)

        guard let statistics = statisticsByRoute[route], statistics.tripCount > 0 else
        {
            return 0
        }

        return Double(statistics.totalTime) / Double(statistics.tripCount)
    }

    private func routeKey(from startStation: String, to endStation: String) -> String
    {
        "\(startStation)->\(endStation)"
    }
}
