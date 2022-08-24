require "diary"

describe Diary do
  it "returns the contents" do
    diary = Diary.new("contents")
    expect(diary.read).to eq "contents"
  end
end
