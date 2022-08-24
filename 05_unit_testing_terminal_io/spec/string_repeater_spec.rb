require "string_repeater"

describe StringRepeater do
  it "repaets a string by an inputted number of times" do
    io = double :io
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times. Please input a string")
    expect(io).to receive(:gets).and_return("TWIX")
    expect(io).to receive(:puts).with("Please enter a number of repeats")
    expect(io).to receive(:gets).and_return("10")
    string_repeater = StringRepeater.new(io)
    expect(string_repeater.run).to eq "TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX"
  end
end
