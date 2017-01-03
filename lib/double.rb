module And
  class Double
    attr_accessor :input_a, :input_b

    def initialize
      @input_a = 0
      @input_b = 0
    end

    def output
      @input_a * @input_b
    end

  end
end
