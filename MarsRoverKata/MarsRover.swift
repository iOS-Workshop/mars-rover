class MarsRover {
    
    enum CardinalDirection {
        case north
        case west
        case south
        case east
    }
    
    enum Direction {
        case left
        case right
    }
    
    var position: [Int]
    var orientation: CardinalDirection
    
    init(_ orientation: CardinalDirection) {
        self.position = [0,0]
        self.orientation = orientation
    }
    
    func moveForward(_ step: Int) {
        switch orientation {
        case .south:
            position[1] -= step
        case .north:
            position[1] += step
        case .east:
            position[0] += step
        case .west:
            position[0] -= step
        }
    }
    
    func turn(_ direction: Direction) {
        switch direction {
        case .right:
            if (self.orientation == .north) {
                self.orientation = .east
            }
        case .left:
            if (self.orientation == .north) {
                self.orientation = .west
            }
        }
    }
}
