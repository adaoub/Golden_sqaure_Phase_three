require "music_library"

RSpec.describe MusicLibrary do
  it "returns the list of tracks" do
    music_library = MusicLibrary.new
    fake_track = double :fake_track
    music_library.add(fake_track)
    expect(music_library.all).to eq [fake_track]
  end

  it "returns the tracks that match the keyword" do
    music_library = MusicLibrary.new
    fake_track = double :fake_track, matches?: true
    music_library.add(fake_track)
    expect(music_library.search("The Beatles")).to eq [fake_track]
  end

  it "returns the tracks that match the keyword" do
    music_library = MusicLibrary.new
    fake_track = double :fake_track, matches?: true
    fake_track2 = double :fake_track, matches?: false
    music_library.add(fake_track)
    expect(music_library.search("The Beatles")).to eq [fake_track]
  end

  it "returns empty" do
    music_library = MusicLibrary.new
    fake_track2 = double :fake_track, matches?: false
    music_library.add(fake_track2)
    expect(music_library.search("The Beatles")).to eq []
  end

  it "fails if keyword is not a string" do
    music_library = MusicLibrary.new
    fake_track2 = double :fake_track, matches?: false
    music_library.add(fake_track2)
    expect { music_library.search(2) }.to raise_error "keyword must be a string"
  end
end
