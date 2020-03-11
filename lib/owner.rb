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
    @@all.clear
  end

# Associations

  def cats
    Cat.all.select {|cat| cat.owner == self}
    # what is self here? => Owner class

    # what is cat.owner here?

  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)

  end

  #binding.pry
end
