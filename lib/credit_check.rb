class CreditCheck
  attr_reader :num

  def initialize(num=nil)
    @num = num
  end

  def reverse_int
    num.to_s.chars.reverse.map(&:to_i)
  end

  def squares
    reverse_int.map.with_index do |num,index|
      if index.odd?
        num * 2
      else
        num
      end
    end
  end

  def summer
    squares.map do |num|
      if num > 9
        num.to_s.chars.each_slice(2).map do |num_1,num_2|
          num_1.to_i + num_2.to_i
        end
      else
        num
      end
    end.flatten.reduce(:+)
  end

  def validate
    if summer % 10 == 0
       "Valid!"
    else
       "Invalid!"
    end
  end



end
