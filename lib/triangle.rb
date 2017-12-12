class Triangle

  attr_reader :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    validate_triangle
    if side_a == side_b && side_a == side_c #all sides
      :equilateral
    elsif side_a == side_b || side_c == side_b || side_a == side_c #two sides
      :isosceles
    else #no sides
      :scalene
    end
  end

  def validate_triangle
    if side_a <= 0 || side_b <= 0 || side_c <= 0 ||
      side_a + side_b <= side_c || side_a + side_c <= side_b || side_c + side_b <= side_a
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
end
