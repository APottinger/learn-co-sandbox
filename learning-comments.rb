class Song 
  attr_accessor :name, :genre, :artist 
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def save 
    @@all << self
  end 
  
  def initialize(name, genre)
    @name = name 
    @genre = genre 
    save
  end 
  
  def artist_name 
    self.artist.name 
  end
  
  def songs_by_artist(artist)
    Song.all.select {|song| song.artist == artist}
  end 
end 

class Artist 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def add_song(song)
    song.artist = self 
  end 
  
  def add_song_by_name(name, genre)
    song = Song.new(name, genre)
    add_song(song)
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end 
end 

roger_rabbit = Song.new("Roger Rabbit", "Pop")
sws = Artist.new("Sleeping With Sirens")

roger_rabbit.artist.name 

sws.add_song(roger_rabbit)
sws.names   

roger_rabbit.artist
james_dean = Song.new("JD&AH", "Pop")
sws.add_song(james_dean)

james_dean.artist

roger_rabbit.songs_by_artist(sws)
sws.names

sws.add_song_by_name("Roger Rabbit", "Pop")