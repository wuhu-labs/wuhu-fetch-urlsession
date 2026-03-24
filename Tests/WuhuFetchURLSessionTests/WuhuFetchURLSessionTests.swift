import Testing
import WuhuFetch
@testable import WuhuFetchURLSession

@Test func example() async throws {
  let client = WuhuFetchURLSession()
  #expect(String(describing: type(of: client.upstream)) == "WuhuFetch")
}
