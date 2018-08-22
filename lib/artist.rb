require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_or_create_by_name(artist)
    if @@all.any? {|x| x.name == artist}
      "#{artist} already found."
    else
      Artist.new(artist)
    end
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    binding.pry
    songs.each {|x| "#{x.name}\n"}
  end

  def save
    self.class.all << self
  end
end
# binding.pry
