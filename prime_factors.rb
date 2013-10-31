class PrimeFactors

  def self.for(number, factor=2)
    return [] if number < factor
    div, mod = number.divmod(factor)
    if mod == 0
      [factor] + PrimeFactors.for(div, factor)
    else
      PrimeFactors.for(number, factor+1)
    end
  end
end