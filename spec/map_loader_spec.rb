require_relative "../lib/gallistaca/map_loader.rb"

RSpec.describe :MapLoader do
    context "Given a file that doesn't exist" do
        it "raises an exception" do
            expect do
                MapLoader.new("does_not_exist.txt")
            end.to raise_error(MapDoesNotExist)
         end
    end

    context "Given a valid file" do
        it "loads the map" do
            subject = MapLoader.new("spec/fixtures/valid_map.txt")

            expect(subject).to be_valid
         end
    end

    context "the maploader gives us access to a map" do
      it "allows us to access the map data" do
        map_loader = MapLoader.new("spec/fixtures/valid_map.txt")
        expect(map_loader.map).to_not be_nil
      end

    end

    context "Given a narrow map valid file" do
        it "loads the map" do
            subject = MapLoader.new("spec/fixtures/valid_shrink_map.txt")

            expect(subject).to be_valid
         end
    end

    context "Given an invalid file" do
        it "reports that map is invalid" do
            subject = MapLoader.new("./spec/fixtures/invalid_map.txt")

            expect(subject).to_not be_valid
        end

        xit "reports that map is invalid if it has an impassable obstacle" do

        end

        xit "reports that map is invalid if the player movement speed makes the map impassable" do

        end
    end
end
