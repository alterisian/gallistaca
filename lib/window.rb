require 'ruby2d'

HEIGHT = 800
WIDTH = 400 #1400
GRID_CELL_SIZE = 40

set title: "Gallistaca",
  width: WIDTH,
  height: HEIGHT,
  background: 'blue'

  possible_obstacles = []

  (1...19).each do
    possible_obstacles << Square.new(
      x: rand(WIDTH/GRID_CELL_SIZE)*GRID_CELL_SIZE, y: rand(HEIGHT/GRID_CELL_SIZE)*GRID_CELL_SIZE,
      size: GRID_CELL_SIZE,
      color: 'red',
      z: 10
    )
    # possible_obstacles << Square.new(
    #   x: rand(WIDTH), y: rand(HEIGHT),
    #   size: rand(WIDTH/4),
    #   color: 'red',
    #   z: 10
    # )

  end

  #draw some lines for the grid as a background. So z = 1
  number_of_lines_across = WIDTH / GRID_CELL_SIZE
  number_of_lines_down = HEIGHT / GRID_CELL_SIZE
  x = WIDTH / number_of_lines_across
  while(x<WIDTH) do
    Line.new(
      x1: x, y1: 0,
      x2: x, y2: HEIGHT,
      width: 1,
      color: 'white',
      z: 1
    )
    x+=GRID_CELL_SIZE
  end

  y = HEIGHT / number_of_lines_down
  while(y<HEIGHT) do
    Line.new(
      x1: 0, y1: y,
      x2: WIDTH, y2: y,
      width: 1,
      color: 'white',
      z: 1
    )
    y+=GRID_CELL_SIZE
  end


# setup game

 # scenery
 # actors
 # first move

##
# Game loop
##

visible_obtacles = possible_obstacles
frame_count = 0

puts "Cubes: #{visible_obtacles.length}"

update do
  frame_count += 1
  # control actors
  #  user
  # add obsctacle
  # move obsctacle
  # IM: Commenting out below, as forgot why we are adding random blocks in.
  # if frame_count % 50 == 0
  #   puts "Adding new obj at frame: #{frame_count}. "
  #   visible_obtacles << possible_obstacles[rand(possible_obstacles.length)]
  # end

  visible_obtacles.each do |visible_obstacle|
    if frame_count % 20 == 0
      visible_obstacle.y += GRID_CELL_SIZE

      if visible_obstacle.y > HEIGHT
        visible_obstacle.y = -1 * GRID_CELL_SIZE
      end
    end
  end

end

show
