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
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(artist)
    if self.all.none? {|musician| musician.name == artist}
      self.new(artist)
    end
  end
  
  def print_songs
    Song.all.each |tune| do
      
  end
  
end