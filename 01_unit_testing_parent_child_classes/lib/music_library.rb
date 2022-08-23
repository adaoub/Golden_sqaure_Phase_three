class MusicLibrary
  def initialize
    @list = []
  end

  def add(track)
    @list << track
  end

  def all
    @list
  end

  def search(keyword)
    fail "keyword must be a string" unless keyword.is_a? String
    @list.select do |track|
      track.matches?(keyword)
    end
  end
end
