class MP3Importer

  attr_accessor :path

  def initialize(path) #initializes with a file path
    @path = path
  end

  def files
    Dir.entries("./db/mp3s").each {|x| Song.new_by_filename(x)}
  end

  def import

  end

end
