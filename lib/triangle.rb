class Triangle
  # write code here

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c

  end

  attr_accessor :a, :b, :c
  attr_reader :type

  def kind
    if @a+@b > @c ||
       @b+@c > @a ||
       @a+@c > @b then

       begin
         raise TriangleError
       rescue TriangleError => error
       end ## if_error

     elsif @a == @b && @a == @c
       return :equilateral
     elsif @a == @b ||
       @b == @c ||
       @a == @c then

       :isosceles

     else
       :scalene
       
     end ## if_else end
  end ## def_kind

  class TriangleError < StandardError
  end


end # class Triangle
