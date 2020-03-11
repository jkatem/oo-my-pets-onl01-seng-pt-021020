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

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(dog)
    Dog.new(dog, self)
  end

  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
    end
  end

  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
    end 
  end

  def sell_pets 
    pets = dogs + cats
    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end 
  end 

  def list_pets
   "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
 end

  #binding.pry
end
