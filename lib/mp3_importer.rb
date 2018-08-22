class MP3Importer

  attr_accessor :path

  @@files = []

  def initialize(path) #initializes with a file path
    @path = path
  end

  def files
    # @@files << Dir.entries("./db/mp3s").each {|x| "#{x}"}
    # binding.pry
    Dir.entries("./spec/fixtures/mp3s").reject {|x| x.include?("mp3")}
  end

  def self.files
    @@files
  end

  def import
    Song.new_by_filename(files)
  end

end
