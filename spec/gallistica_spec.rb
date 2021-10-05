 require_relative "../lib/gallistaca.rb"

RSpec.describe :Gallistaca do
    context "Gallistaca is invoked" do
         it "does not raise an exception, without parameter" do
             expect do
                 Gallistaca.new
             end.to_not raise_error(Exception)
          end
          it "draw screen takes all element on the grid and pushes them one row down" do
            gallistaca = Gallistaca.new

            first_before_position = gallistaca.all_obstacles.first.y
            last_before_position = gallistaca.all_obstacles.last.y

            gallistaca.update_cycle

            first_after_position = gallistaca.all_obstacles.first.y
            last_after_position = gallistaca.all_obstacles.last.y

            expect(first_after_position).to be(first_before_position+1)
            expect(last_after_position).to be(last_before_position+1)
          end

          it "draw screen with no obstacles" do
              gallistaca = Gallistaca.new

              expect(gallistaca.number_of_obstacles).to be(0)
          end

          it "until there is an input from the user, the game is paused." do
              gallistaca = Gallistaca.new

              expect(gallistaca.start_message).to eq("Press Key To Start")
          end

    end
end
