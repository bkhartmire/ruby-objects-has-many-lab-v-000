class Artist
  attr_accessor :name
  @@song_count = []

  def initialize(name)
    @name = name
    songs = []
  end

  def add_song(song)
    @@song_count << song
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @@song_count << song
    song.artist = self
  end

  def songs
    @@song_count
  end

  def self.song_count
    @@song_count.count
  end
end
