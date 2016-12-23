class Array
  # Calcualte sample mean
  def mean : BigRational
    self.sum.quo self.size
  end

  # Calcualte sum of squares
  def sum_of_squares : BigRational
    reduce(BigRational.new 0) { |a, x| a + (x - self.mean).square }
  end

  # Calculate sample variance
  def variance_sample : BigRational
    self.sum_of_squares.quo(size - 1)
  end

  # alias for variance_sample
  def var : BigRational
    self.variance_sample
  end

  def sd : Float64
    Math.sqrt(self.variance_sample)
  end

  # Calculate sample median
  def median
    self.size % 2 == 1 ? self.sort[self.size.quo(2).to_f.to_i] : [self.sort[(self.size.quo(2)).to_f.to_i], self.sort[self.size.quo(2).to_f.to_i - 1]].mean
  end

  # Calculate quartiles
  def first_quartile
    self.size % 4 == 1 ? [self.sort[self.size.quo(4).to_f.to_i - 1], self.sort[self.size.quo(4).to_f.to_i]].mean : self.sort[self.size.quo(4).to_f.to_i - 1]
  end

  # same as median
  def second_quartile
    self.median
  end

  def third_quartile
    self.size % 4 == 1 ? [self.sort[self.size.quo(4).to_f.to_i * 3 - 1], self.sort[self.size.quo(4).to_f.to_i * 3]].mean : self.sort[self.size.quo(4).to_f.to_i * 3 - 1]
  end
end
