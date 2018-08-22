require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    # binding.pry
    @name = name
    self.name
  end

  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

  def self.new_by_filename(filename)
    # binding.pry
    song = self.new(filename.split(/[-\.]/)[1].strip)
    song.artist_name = (filename.split(/[-\.]/)[0].strip)
    song.artist.add_song(song)
    song.save
    song
  end
end
