import XCTest
@testable import MastodonKit

class AccountTests: XCTestCase {
    func testAccountFromJSON() {
        let fixture = try? Fixture.load(fileName: "Fixtures/Account.json")
        let dictionary = fixture as! JSONDictionary
        let account = Account(json: dictionary)

        XCTAssertEqual(account?.id, 1)
        XCTAssertEqual(account?.username, "ornithocoder")
        XCTAssertEqual(account?.acct, "ornithocoder")
        XCTAssertEqual(account?.displayName, "Ornithologist Coder")
        XCTAssertEqual(account?.note, "Developer of MastodonKit")
        XCTAssertEqual(account?.url, "https://mastodon.technology/@ornithocoder")
        XCTAssertEqual(account?.avatar, "http://lorempixel.com/200/200/cats/3/")
        XCTAssertEqual(account?.header, "http://lorempixel.com/700/300/cats/1/")
        XCTAssertEqual(account?.locked, false)
        XCTAssertEqual(account?.createdAt.timeIntervalSince1970, 1482239655.132)
        XCTAssertEqual(account?.followersCount, 42)
        XCTAssertEqual(account?.followingCount, 52)
        XCTAssertEqual(account?.statusesCount, 420)
    }
}
