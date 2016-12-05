module BookKeeping
  VERSION = 3
end

class Hamming

  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    if a == b
       0
    else
      compute_difference(a, b)
    end
  end

  def self.compute_difference(a, b)
    @counter = 0
    a.each_char.with_index do |letter, i |
      @counter += 1 if a[i] != b[i]
    end
    @counter
  end

end
