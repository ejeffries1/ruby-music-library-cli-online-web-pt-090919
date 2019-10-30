class Artist
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def songs
    @@all.each do |song|
      song
    end
  end
  
  def add_song(song)
    @songs.select do |music|
      song == music.artist
    end
  end
  
  def self.create(name)
     artist = self.new(name)
     artist.save
     artist
  end
end