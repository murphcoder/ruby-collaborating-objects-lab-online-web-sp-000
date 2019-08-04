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
    song = self.new
    song.name = song_array[0]
    song.artist = Artist.find_or_create_by_name
  
end