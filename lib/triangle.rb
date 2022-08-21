class Triangle
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  def kind
    validity
    if a == b && b== c
      :equilateral
    elsif
      a == b || b == c || a == c
      :isosceles
    else
       
        :scalene
      end
    end

    def inequality?
      a + b > c && a + c > b && b + c > a
    end
    def postiv?
      [a, b, c].all?(&:positive?) 
    end
      def validity 
        raise TriangleError unless postiv? && inequality?
    end
    class TriangleError <StandardError
    end
   
end
