class MapDoesNotExist < StandardError
end

class MapLoader
    @map = nil

    def initialize(filename)
        unless File.exist?(filename)
            raise MapDoesNotExist, "Filename: #{filename} does not exist"
        end

        load(filename)
    end

    def map
      @map
    end

    def load(filename)
      @map = File.readlines(filename)
    end

    def valid?
        # each line has the same width
        width_of_map = @map.first.length
        @map.each do |line|
            return false if line.length != width_of_map
        end

        # it only contains the letter X or a space
        unless @map.grep_v(/X+ +X+/).empty?
            return false
        end

        true
    end
end
