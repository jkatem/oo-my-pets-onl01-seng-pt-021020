require 'pry'

class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor :Cats, :Dogs

  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    self.all.clear
  end

# Associations

  def cats
    Cats.all.select
  end

  #binding.pry
end
