import XCTest
@testable import ShapesPackage

final class ShapesPackageTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ShapesPackage().text, "Hello, World!")
    }
    
    
    func testCirclePerimeter() {
        let radius: CGFloat = 4.0
        let result = radius * 2.0 * .pi
        let circle = Circle(radius: radius)
        XCTAssertEqual(circle.perimeter(), result, "Calculating perimeter is broken")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
