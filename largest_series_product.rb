class Series
  VALID_CHARACTERS = %w{0 1 2 3 4 5 6 7 8 9}

  def initialize(value)
    @value = value
  end

  def largest_product(len)
    raise ArgumentError if len > @value.length || len < 0

    return 1 if value.empty? || len.zero?

    i = 0
    products = []

    while i < value.length - len + 1
      product = 1

      for char in value[i...(i + len)].each_char
        raise ArgumentError unless VALID_CHARACTERS.include?(char)

        product *= char.to_i
      end

      products << product
      i += 1
    end

    products.max
  end

  private
    attr_reader :value
end
