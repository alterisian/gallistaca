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

    end
end
