require 'pry'

class Triangle
    attr_reader :side1, :side2, :side3

    def initialize(side1, side2, side3)
      @side1, @side2, @side3 = side1, side2, side3 
    end 

    def product_of_all_sides
      side1 * side2 * side3
    end
    
    def kind
      raise TriangleError if (0 == side1 or side2  == 0 or 0 == side3) or (side1 + side2 <= side3 or side1 + side3 <= side2 ) or (side3 + side2 <= side1 or side1 + side3 <= side2 ) or (side3 + side2 <= side1 or side2 + side3 <= side1 ) 

      return :scalene if side1 != side2 and side1 != side3 and side2 != side3
      return :equilateral if side1 == side2 and side1 == side3
      return :isosceles 
    end
    

    class TriangleError < StandardError
    end

end
