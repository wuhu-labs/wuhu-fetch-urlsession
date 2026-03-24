import WuhuFetch

public struct WuhuFetchURLSession: Sendable {
  public let upstream: WuhuFetch

  public init(upstream: WuhuFetch = .init()) {
    self.upstream = upstream
  }
}
