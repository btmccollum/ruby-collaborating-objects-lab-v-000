class MP3Importer

  attr_accessor :path

  @@files = []

  def initialize(path) #initializes with a file path
    @path = path
  end

  def files
    Dir.entries("./spec/fixtures/mp3s").select {|song_filename| song_filename.include?("mp3")}
  end

  def self.files
    @@files
  end

  def import
    Song.new_by_filename(files)
  end

end
