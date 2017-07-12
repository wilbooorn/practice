class BigInteger
  attr_accessor :num1, :num2, :max, :min, :store1, :store2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
    @max = num1.length > num2.length ? num1.length : num2.length
    @min = num1.length < num2.length ? num1.length : num2.length
    @store1 = Array.new(max, 0)
    @store2 = Array.new(max, 0)
  end

  def add
    idx1 = 0
    idx2 = 0
    while idx1 < num1.length
      @store1[idx1] = num1[num1.length - 1 - idx1].to_i
      idx1 += 1
    end
    while idx2 < num2.length
      @store2[idx2] = num2[num2.length - 1 - idx2].to_i
      idx2 += 1
    end

    carry = 0
    result = []
    (0...max).each do |i|
      current = @store1[i] + @store2[i] + carry
      current > 9 ? carry = 1 : carry = 0
      result << current % 10
    end
    if carry == 1
      result << "1"
    end
    result = result.map { |el| el.to_s }.join("").reverse
    p result
  end

end


int = BigInteger.new("10", "1000")
int.add
