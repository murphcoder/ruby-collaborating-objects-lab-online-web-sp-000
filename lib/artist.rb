class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def songs
    Song.all.select {|tune| tune.artist == self}
  end
  
  def save
    @@all << self
  end
  
end