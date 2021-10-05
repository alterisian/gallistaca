require_relative "./lib/gallistaca.rb"

gallistaca = Gallistaca.new

update do
  gallistaca.update_cycle
  gallistaca.end_of_game if gallistaca.number_of_obstacles == 0
end
# TODO: move the above Proc to be inside gallistaca.start somehow
gallistaca.start
