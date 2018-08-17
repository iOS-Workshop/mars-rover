import XCTest

class MarsRoverTests: XCTestCase {
    
    func testCreatesRover() {
        let rover = Rover()
        XCTAssertNotNil(rover)
    }
    
}
