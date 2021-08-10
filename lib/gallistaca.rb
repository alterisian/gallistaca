class Gallistaca
    @ship_position = [0,5]
    @map = nil
    # load in sprites

    # place the ship on the map
    def initialize(width)
        @ship_position=[0, floor(width/2)] #is it floor?
    end

    def collision_detection
        # make it crash with the wall.
        # make it crash with an obstacle.
    end

    def movement_cycle
        # make it move through the map
    end

    def input_detected
        # make it respond to user input
    end
end