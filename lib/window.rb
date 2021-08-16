require 'ruby2d'

HEIGHT = 800
WIDTH = 400
GRID_CELL_SIZE = 20

set title: "Gallistaca",
  width: WIDTH,
  height: HEIGHT,
  background: 'blue'

  possible_obstacles = []

  (1...4).each do
    possible_obstacles << Square.new(
      x: rand(WIDTH), y: rand(HEIGHT),
      size: rand(WIDTH/4),
      color: 'red',
      z: 10
    )
  end

# setup game

 # scenery
 # actors
 # first move

##
# Game loop
##

visible_obtacles = []
frame_count = 0

puts "Length: #{possible_obstacles.length}"

update do
  frame_count += 1
  # control actors
  #  user
  # add obsctacle
  # move obsctacle
  if frame_count % 50 == 0
    puts "Adding new obj at frame: #{frame_count}"
    visible_obtacles << possible_obstacles[rand(possible_obstacles.length)]
  end

  visible_obtacles.each do |visible_obstacle|
    if frame_count % 25 == 0
      visible_obstacle.y += 1

      if visible_obstacle.y > HEIGHT
        visible_obstacle.y = -50
      end
    end
  end


end



show
