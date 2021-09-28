require_relative "./lib/gallistaca.rb"

set(title: "Gallistaca",
  width: Gallistaca::DEFAULT_WIDTH,
  height: Gallistaca::DEFAULT_HEIGHT,
  background: 'blue')

gallistaca = Gallistaca.new

update do
  gallistaca.update_cycle
end

show
