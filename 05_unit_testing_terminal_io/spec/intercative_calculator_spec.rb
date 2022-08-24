require "interactive_calculator"

describe InteractiveCalculator do
  it "subtract the two number inputted by user" do
    io = double :io
    expect(io).to receive(:puts).with("Please input the first number")
    expect(io).to receive(:gets).and_return("4")
    expect(io).to receive(:puts).with("Please input the second number")

    expect(io).to receive(:gets).and_return("3")

    interactive_calculator = InteractiveCalculator.new(io)
    expect(interactive_calculator.run).to eq 1
  end
end
