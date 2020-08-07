#require_relative '../lib/concerns/memorable'

class Song
  extend Memorable
end

class Song
  extend Findable
end

class Song
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end 

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
