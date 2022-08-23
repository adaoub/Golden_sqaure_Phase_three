class Track
  def initialize(title, artist) # title and artist are both strings
    @title = title
    @artist = artist
  end

  def matches?(keyword)
    keyword == (@title || @artist) ? true : false
  end
end
