module Rudil
  class Throw < Array
    def to_s
      inspect
    end
    
    def lowest
      sort.first 
    end

    def highest
      sort.last
    end

    def mean
      if size < 1
        return nil
      end
      inject(0.0) { |sum, i| sum + i } / size 
    end
    
    def above m
      select { |n| n > m }.size
    end

    def eq_or_above m
      select { |n| n >= m }.size
    end

    def below m
      select { |n| n < m }.size
    end

    def eq_or_below m
      select { |n| n <= m }.size
    end
  end
end
