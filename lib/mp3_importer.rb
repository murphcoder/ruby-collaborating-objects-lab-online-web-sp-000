class MP3Importer
  
  def initialize(path)
    @path = Dir["#{path}/*.mp3"]