require 'ruby2d'

class Gallistaca
    attr_reader :all_obstacles

    DEFAULT_HEIGHT = 800
    GRID_CELL_SIZE = 40
    DEFAULT_WIDTH = 400
    @map = []
    # load in sprites

    # place the ship on the map
    def initialize()
      @all_obstacles = generate_obstacles
      update_cycle

      Text.new message
    end

    def message
      "Press Key To Start"
    end

    def generate_obstacles
      obstacles = []

      (1...19).each do
        obstacles << Square.new(
          x: rand(DEFAULT_WIDTH/GRID_CELL_SIZE)*GRID_CELL_SIZE, y: rand(DEFAULT_HEIGHT/GRID_CELL_SIZE)*GRID_CELL_SIZE,
          size: GRID_CELL_SIZE,
          color: 'red',
          z: 10
        )
      end

      obstacles
    end

    def number_of_obstacles
      0
    end

    def draw_screen
      #redraw
    end

    def collision_detection
        # make it crash with the wall.
        # make it crash with an obstacle.
    end

    def update_cycle
        puts "Length: #{@all_obstacles.length}"
        # make it move through the map
        @all_obstacles.each_with_index do |obstacle, index|
          obstacle.y += 1

          if obstacle.y > DEFAULT_HEIGHT
            @all_obstacles.delete_at index
          end
        end

    end

    def input_detected
        # make it respond to user input
    end
end
