require_relative "./lib/gallistaca.rb"

# set(title: "Gallistaca",
#   width: Gallistaca::DEFAULT_WIDTH,
#   height: Gallistaca::DEFAULT_HEIGHT,
#   background: 'blue')

gallistaca = Gallistaca.new

gallistaca.update do
  gallistaca.update_cycle
end

#show # we dont like this, still
#Ruby2D::Window::show
#Window.show

#gallistaca.start

gallistaca.show
