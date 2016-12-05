module BookKeeping
  VERSION = 3
end 

class Hamming

  def self.compute(a, b)
    raise ArgumentError if a.length != b.length
    if a == b
      result = 0
    elsif
      result = compute_difference(a, b)
    end
    result
  end

  def self.compute_difference(a, b)
    split_a = a.chars
    @counter = 0
    split_a.each_with_index do |letter, i |
      @counter += 1 if a[i] != b[i]
    end
    @counter
  end

end
