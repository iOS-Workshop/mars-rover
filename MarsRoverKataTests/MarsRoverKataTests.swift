import XCTest

class MarsRoverKataTests: XCTestCase {
    
    let marsRover = MarsRover()
    
    func testCanCreateAMarsRover() {
        XCTAssertNotNil(marsRover)
    }
    
    func testHasADefaultPosition(){
        let position = marsRover.getPosition()
        XCTAssertEqual(position,[0,0])
    }

    func testHasADefaultOrientation() {
        XCTAssertEqual("N", marsRover.orientation)
    }
    
    func testMustMoveForward(){
        let expectedPosition:Array<Int> = [0, -1]
        marsRover.move(inDirection: "F")
        let actualPosition = marsRover.getPosition()
        XCTAssertEqual(expectedPosition, actualPosition)
    }
    
    func testMustMoveBackwards() {
        let expectedPosition:Array<Int> = [0, 1]
        marsRover.move(inDirection: "B")
        let actualPosition = marsRover.getPosition()
        XCTAssertEqual(expectedPosition, actualPosition)
    }
    
    func testTurnsRight(){
        marsRover.turn(inDirection: "R")
        let actualOrientation = marsRover.orientation
        XCTAssertEqual("E", actualOrientation)
    }
    
}


