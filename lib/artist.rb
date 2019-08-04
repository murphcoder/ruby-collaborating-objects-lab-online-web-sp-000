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
  
  def find_or_create_by_name(artist)
    if self.class.all.any? {|musician| musician.name == artist}
      musician
    else
       self.class.new(artist)
    end
  end
  
end