class Triangle
  attr_reader :num1, :num2, :num3

  def initialize(num1, num2, num3)
    @num1 = num1
    @num2 = num2
    @num3 = num3
  end

  def kind
    validate
    if num1 == num2 && num2 == num3
      :equilateral
    elsif num1 == num2 || num2 == num3 || num3 == num1
      :isosceles
    else
      :scalene
    end
  end

  def no_negative_numbers?
    num1 > 0 && num2 > 0 && num3 > 0
  end

  def check_lengths?
    num1 + num2 > num3 && num2 + num3 > num1 && num3 + num1 > num2
  end

  def validate
    raise TriangleError unless no_negative_numbers? && check_lengths?
  end


  class TriangleError < StandardError
  end
end
