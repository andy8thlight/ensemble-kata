import {Grid} from "./grid";

export class MarsRover {
    execute(moves?: string) {
        let grid = new Grid()

        moves?.split("").forEach(chars => {
            if (chars === "M") {
                grid.move();
            }
            if (chars === "R") {
                grid.turnRight();
            }
            if (chars === "L") {
                grid.turnLeft();
            }
        })

        return grid.getLocationAndDirection()
    }
}
