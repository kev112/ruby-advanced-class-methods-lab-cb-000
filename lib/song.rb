class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist_name)
    @name = name
    @artist_name = artist_name
  end

  def self.create(name, artist_name)
    song = self.new(name, artist_name)
    @@all << song
    song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end
end
