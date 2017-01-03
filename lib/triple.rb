module And
  class Triple
    attr_accessor :input_a, :input_b, :input_c

    def initialize
      @input_a = 0
      @input_b = 0
      @input_c = 0
    end

    def output
      @input_a * @input_b * @input_c
    end

  end
end
