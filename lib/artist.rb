#require_relative '../lib/concerns/memorable'

#class Artist
 # extend Memorable 
#end

#class Artist
 # extend Findable 
#end

class Artist
  include Paramable
  attr_accessor :name
  attr_reader :songs
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Memorable::InstanceMethods
  include Paramable::InstanceMethods

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
