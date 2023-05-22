class Triangle
  # write code here
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  attr_accessor :a, :b, :c

  def kind
    sum = a+b
    sum2 = a+c
    sum3 = b+c
    if(a > 0 && b > 0 && c > 0 && sum > c && sum2 > b && sum3 > a)
      return :scalene if (a != b && b != c && c != a)
      return :isosceles if ((a == b && b != c)  || (b == c && c != a) || (c == a && a != b))
      return :equilateral if (a == b && b == c && c == a)
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      "Error: Invalid Triangle"
    end
  end

end
