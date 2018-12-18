import XCTest

class MarsRoverTest: XCTestCase {
   
    func testStartsFacingGivenOrientation() {
        let robot = MarsRover(initialOrientation: .east)
        XCTAssertEqual(robot.orientation, .east)
    }
    
    func testMovesForwardFacingEast() {
        let robot:MarsRover = MarsRover(initialOrientation: .north)
        
        robot.moveForward(1)
        
        XCTAssertEqual(robot.position, [0,1])
    }
    
    func testMovesForwardFacingSouth() {
        let robot = MarsRover(initialOrientation: .south)

        robot.moveForward(1)
        
        XCTAssertEqual(robot.orientation, .south)
        XCTAssertEqual(robot.position, [0, -1])
    }
    
    func testMovesForwardFacingWest() {
        let robot = MarsRover(initialOrientation: .west)
        
        robot.moveForward(1)
        
        XCTAssertEqual(robot.orientation, .west)
        XCTAssertEqual(robot.position, [-1, 0])
    }
    
    func testTurnsRight() {
        let robot = MarsRover(initialOrientation: .north)
        
        robot.turn(.right)
        
        XCTAssertEqual(robot.orientation, .east)
    }
    
    func testTurnsLeft() {
        let robot = MarsRover(initialOrientation: .north)
        
        robot.turn(.left)
        
        XCTAssertEqual(robot.orientation, .west)
    }
    
}
