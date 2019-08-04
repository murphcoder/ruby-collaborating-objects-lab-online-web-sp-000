class MP3Importer
  
  attr_reader :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    basedir = @path
    Dir.glob "*.mp3"
  end
  
end