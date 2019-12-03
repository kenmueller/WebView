import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
 	[testCase(WebViewTests.allTests)]
}
#endif
