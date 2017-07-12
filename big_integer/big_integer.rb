class BigInteger
  attr_accessor :num1, :num2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def add
    store1 = num1.split("").reverse
    store2 = num2.split("").reverse
    p store1
  end

end


int = BigInteger.new("23456434", "121212121")
int.add
