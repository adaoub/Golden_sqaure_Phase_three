class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times. Please input a string"
    word = @io.gets.chomp
    @io.puts "Please enter a number of repeats"
    num = get_number

    word * num
  end

  private

  def get_number
    number = @io.gets
    return number.to_i if number.to_i.to_s == number
  end

  # Hello. I will repeat a string many times.
  # Please enter a string
  # TWIX
  # Please enter a number of repeats
  # 10
  # Here is your result:
  # TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX

  # string_repeater = StringRepeater.new(Kernel)
  # string_repeater.run

end
