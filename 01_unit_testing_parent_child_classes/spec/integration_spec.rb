require "music_library"
require "track"

describe "integration" do
  it "returns all trcak" do
    track = Track.new("title", "artist")
    music_library = MusicLibrary.new
    music_library.add(track)
    expect(music_library.all).to eq [track]
  end

  describe "#serach class" do
    it "returns a list of trcaks that match the keyword" do
      track1 = Track.new("title", "artist")
      music_library = MusicLibrary.new
      music_library.add(track1)
      track2 = Track.new("song", "singer")
      music_library.add(track2)
      expect(music_library.search("song")).to eq [track2]
    end
  end
end
