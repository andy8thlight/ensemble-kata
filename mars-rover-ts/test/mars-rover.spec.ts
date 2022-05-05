import {MarsRover} from "../src/mars-rover";

describe("Mars Rover", () => {

    describe("#execute", () => {
        let rover: MarsRover;

        beforeEach(() => {
            rover = new MarsRover();
        });

        it("should return same location and direction if no argument is passed", () => {
            expect(rover.execute()).toEqual("0:0:N")
        });

        it("should move once north", () => {
            expect(rover.execute("M")).toEqual("0:1:N")
        })

        it("should move north twice", () => {
            expect(rover.execute("MM")).toEqual("0:2:N")
        })

        it("should move north five times", () => {
            expect(rover.execute("MMMMM")).toEqual("0:5:N")
        })

        it("should move north ten timse", () => {
            expect(rover.execute("MMMMMMMMMM")).toEqual("0:0:N")
            expect(rover.execute("MMMMMMMMMMM")).toEqual("0:1:N")
            expect(rover.execute("MMMMMMMMMMMMMMMMMMMMM")).toEqual("0:1:N")
        })

        it("should turn east", () => {
            expect(rover.execute("R")).toEqual("0:0:E")
        })

        it("should turn east twice", () => {
            expect(rover.execute("RR")).toEqual("0:0:S")
        })

        it("should turn east thrice", () => {
            expect(rover.execute("RRR")).toEqual("0:0:W")
        })

        it("should turn east four times", () => {
            expect(rover.execute("RRRR")).toEqual("0:0:N")
            expect(rover.execute("RRRRR")).toEqual("0:0:E")
        })

        it("should turn west", () => {
            expect(rover.execute("L")).toEqual("0:0:W")
        })

        it("should turn west twice", () => {
            expect(rover.execute("LL")).toEqual("0:0:S")
            expect(rover.execute("LLLL")).toEqual("0:0:N")
            expect(rover.execute("LLLLL")).toEqual("0:0:W")
        })

        it("should turn and move east", () => {
            expect(rover.execute("RM")).toEqual("1:0:E")
            expect(rover.execute("RMM")).toEqual("2:0:E")
        })

        it("should move east off grid and wrap around", () => {
            expect(rover.execute("RMMMMMMMMMM")).toEqual("0:0:E")
        })

        it("should turn and move west", () => {
            expect(rover.execute("LM")).toEqual("9:0:W")
            expect(rover.execute("LMM")).toEqual("8:0:W")
        })

        it("should turn and move south", () => {
            expect(rover.execute("LLM")).toEqual("0:9:S")
            expect(rover.execute("LLMM")).toEqual("0:8:S")
        })

        it("should move about a bit", () => {
            expect(rover.execute("MMRMMLM")).toEqual("2:3:N")
        })
    })

});
