module And
  class Multi
    attr_accessor :inputs

    def initialize(number)
      @inputs = []
      number.times do |number|
        letters = (a..z).to_a
        letter = letters.shift
        name = "input_#{letter}"
        @inputs << @input_(letter)
      end
    end

    def output
      @input_a * @input_b * @input_c
    end

  end
end
