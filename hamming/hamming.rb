class Hamming

  def self.compute(a, b)
    if a == b
      0
    elsif
      compute_difference(a, b)
    end
  end

  def compute_difference(a, b)
    split_a = a.chars
    counter = 0
    split_a.each_with_index do |letter, i |
      counter += 1 if a[i] != b[i]
    end
  end

end
