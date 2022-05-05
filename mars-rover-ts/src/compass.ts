export class Compass {
    direction: Array<string>;
    i: number;

    constructor() {
        this.direction = ["N", "E", "S", "W"]
        this.i = 0
    }

    turnRight() {
        this.i += 1
        if (this.i > 3) {
            this.i = 0
        }
    }

    turnLeft() {
        this.i -= 1
        if (this.i < 0) {
            this.i = 3
        }
    }

    getDirection() {
        return this.direction[this.i]
    }
}
