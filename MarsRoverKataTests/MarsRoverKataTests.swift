import XCTest

class MarsRoverTest: XCTestCase {
    
    func testMoveOneStepForward() {
        let robot:MarsRover = MarsRover(.north)
        
        robot.moveForward(1)
        
        XCTAssertEqual(robot.position, [0,1])
    }
    
    func testStartsFacingEast() {
        let robot = MarsRover(.east)
        XCTAssertEqual(robot.orientation, .east)
    }
    
    func testMoveOneStepSouth() {
        let robot = MarsRover(.south)

        robot.moveForward(1)
        
        XCTAssertEqual(robot.orientation, .south)
        XCTAssertEqual(robot.position, [0, -1])
    }
    
    func testMovesOneStepWest() {
        let robot = MarsRover(.west)
        
        robot.moveForward(1)
        
        XCTAssertEqual(robot.orientation, .west)
        XCTAssertEqual(robot.position, [-1, 0])
    }
    
    func testTurnsRight() {
        let robot = MarsRover(.north)
        
        robot.turn(.right)
        
        XCTAssertEqual(robot.orientation, .east)
    }
    
    func testTurnsLeft() {
        let robot = MarsRover(.north)
        
        robot.turn(.left)
        
        XCTAssertEqual(robot.orientation, .west)
    }
    
}
