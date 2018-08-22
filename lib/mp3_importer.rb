class MP3Importer

  attr_accessor :path

  @@files = []

  def initialize(path) #initializes with a file path
    @path = path
  end

  def files
    Dir.entries("./db/mp3s").each {|x| puts x}
  end

  def self.files
    @@files
  end

  def import
    Song.new_by_filename(files)
  end

end
