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

    context "Given an invalid file" do
        it "reports that map is invalid" do
            subject = MapLoader.new("./spec/fixtures/invalid_map.txt")

            expect(subject).to_not be_valid
        end
    end
end