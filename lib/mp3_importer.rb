class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.fo("#{@path}/*.mp3") {|file| 
  end
  
end