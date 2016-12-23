struct Float
  def quo(n : Int32 | UInt64 | BigInt) : BigRational
    BigRational.new(self, n)
  end

  def square : Float64
    self * self
  end

  def factorial : Float64
    self * Math.gamma self
  end
end

struct Int
  def quo(n : Int32 | UInt64 | BigInt) : BigRational
    BigRational.new(self, n)
  end

  def square : Int
    self * self
  end

  def factorial : BigInt
    (1..self).reduce(BigInt.new 1) { |x, y| x * y }
  end

  def choose(n : UInt64 | Int32 | BigInt) : BigRational
    self.factorial.quo (n.factorial * (self - n).factorial)
  end
end

struct BigRational < Number
  def quo(n : Int32 | UInt64 | BigInt | BigRational) : BigRational
    self / n
  end

  def square : BigRational
    self * self
  end
end
