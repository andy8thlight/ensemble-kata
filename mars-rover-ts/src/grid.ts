import {Compass} from "./compass";

export class Grid {
    x: number;
    y: number;
    compass: Compass;

    constructor() {
        this.y = 0
        this.x = 0
        this.compass = new Compass();
    }

    turnLeft() {
        this.compass.turnLeft()
    }

    turnRight() {
        this.compass.turnRight()
    }

    move() {
        if (this.compass.getDirection() === "E") {
            this.x += 1
            if (this.x > 9) {
                this.x = 0
            }
        } else if (this.compass.getDirection() == "W") {
            this.x -= 1
            if (this.x < 0) {
                this.x = 9
            }
        } else if (this.compass.getDirection() == "S") {
            this.y -= 1
            if (this.y < 0) {
                this.y = 9
            }
        } else {
            this.y += 1
            if (this.y > 9) {
                this.y = 0
            }
        }
    }

    getLocationAndDirection() {
        return `${this.x}:${this.y}:${this.compass.getDirection()}`
    }
}
