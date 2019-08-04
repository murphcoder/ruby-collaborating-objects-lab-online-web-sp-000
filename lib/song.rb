class Song
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(filename)
    song_array = filename.split(" - ")
    tune = Song.new(song_array[0])
    musician = Artist.find_or_create_by_name(song_array[1])
    tune.artist = musician
  end
  
end