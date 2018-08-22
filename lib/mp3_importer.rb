class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries("./spec/fixtures/mp3s").select {|song_filename| song_filename.include?("mp3")}
  end

  def import
    files.each {|song_filename| Song.new_by_filename(song_filename)}
  end

end
