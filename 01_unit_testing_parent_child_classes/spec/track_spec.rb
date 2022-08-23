require "track"

describe Track do
  it "initially starts with artist and title" do
    track = Track.new("artist", "title")
    expect(track).to eq track
  end
end
