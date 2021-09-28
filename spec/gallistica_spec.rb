 require_relative "../lib/gallistaca.rb"

RSpec.describe :Gallistaca do
    context "Gallistaca is invoked" do
        it "does not raise an exception, with a width parameter" do
            expect do
                Gallistaca.new(400)
            end.to_not raise_error(Exception)
         end
         it "does not raise an exception, without parameter" do
             expect do
                 Gallistaca.new
             end.to_not raise_error(Exception)
          end
          it "draw screen takes all element on the grid and pushes them one row down" do
            gallistaca = Gallistaca.new

            before_position = gallistaca.all_obstacles.first.y
            gallistaca.update_cycle
            after_position = gallistaca.all_obstacles.first.y

            expect(after_position).to be(before_position-1)
          end
    end
end
