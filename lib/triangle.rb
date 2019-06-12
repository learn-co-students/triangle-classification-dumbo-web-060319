class Triangle
    attr_reader :side1, :side2, :side3

    def initialize(side1, side2, side3)
      @side1, @side2, @side3 = side1, side2, side3
    end

    def kind
      return :scalene if side1 != side2 and side1 != side3 and side2 != side3
      return :equilateral if side1 == side2 and side1 == side3
      :isosceles 
    end

end
