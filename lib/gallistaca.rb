require 'ruby2d'

class Gallistaca < Ruby2D::Window
    attr_reader :all_obstacles

    DEFAULT_HEIGHT = 800
    GRID_CELL_SIZE = 40
    DEFAULT_WIDTH = 400
    DEFAULT_NUMBER_START_OBJECTS = 20
    @map = []

    def initialize()
      super

      Window.set(title: "Gallistaca",
        width: Gallistaca::DEFAULT_WIDTH,
        height: Gallistaca::DEFAULT_HEIGHT,
        background: 'blue')

      @all_obstacles = generate_obstacles

      # load in sprites

      # update_cycle

      Text.new start_message
    end

    def start_message
      "Press Key To Start"
    end

    def show
      #super
    Window.show
    #
    #   # puts "after show"
    #   # update do
    #   #   puts "in update"
    #   #   update_cycle
    #   # end
    end

    def start

      update( method(:update_cycle) )

      # Window.update do
      #   puts "in start"
      #   gallistaca.update_cycle
      # end
    end

    def generate_obstacles
      obstacles = []

      (0...DEFAULT_NUMBER_START_OBJECTS).each do
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

    # def draw_screen
    #   #redraw
    # end

    def collision_detection
        # make it crash with the wall.
        # make it crash with an obstacle.
    end

    def update_cycle
        puts "Number of obstacles: #{@all_obstacles.length}"
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
