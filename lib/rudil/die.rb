module Rudil
  class Die
    def initialize sides=6
      unless sides >= 1 and sides <= 120
        raise ArgumentError
        # "120 sides should be enough for anybody."
        #   - sMAshdot
        # Such a die would be an Hexakis Icosahedron, and I challenge
        # anyone to build it.
        # The biggest manufactured die to date has 100 sides and is
        # trademarked as Zocchihedron. It isn't a polyhedron anymore
        # but rather a ball with flattened planes (think golfball).
      else
        @sides = sides
      end
    end

    def throw times=1
      if times <= 0
        raise ArgumentError
      end
      Array.new(times).fill { roll }
    end

    def roll
      # the part where randomness happens has it's own method
      # to simplify unit-testing by permitting it to be stubbed.
      rand(@sides)+1
    end
  end
end
