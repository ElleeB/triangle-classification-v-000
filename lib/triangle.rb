class Triangle

  attr_accessor :side_a, :side_b, :side_c, :type

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if @side_a == @side_b && @side_a == @side_c #all sides
      @type = :equilateral
    elsif @side_a == @side_b || @side_c == @side_b || @side_a == @side_c #two sides
      @type = :isosceles
    else #@side_a != @side_b && @side_a != @side_c #no sides
      @type = :scalene
    end
  end

  def validate_triangle
  end

end

class TriangleError < StandardError
end
