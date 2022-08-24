class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Please input the first number"
    num1 = @io.gets.to_i
    @io.puts "Please input the second number"
    num2 = @io.gets.to_i

    num1 - num2
  end
end

# interactive_calculator = InteractiveCalculator.new(Kernel)
# p interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1
