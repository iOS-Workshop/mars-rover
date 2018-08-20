
public class MarsRover {
    let x = 0
    var y = 0
    var orientation = "N"
    
    func getPosition() -> Array<Int> {
        return [x, y]
    }
    
    func move(inDirection direction: String){
        
        if direction == "B"{
            y = 1
        } else {
            y = -1
        }
    }
    //TODO gmartinez continua
    func turn(inDirection orientation: String){
        self.orientation = "E"
    }
}
