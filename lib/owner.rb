require 'pry'

class Owner
@@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all << self

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{species}."
  end 

  def name=(name)
    @name = name
  end

  def name 
    @name
  end

  def pets
    @pets
  end

  def pets=(pets)
    @pets = pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood="happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood=("happy")
    end
  end

  def sell_pets
    self.pets.each do |animal, array|
      array.each do |pet|
        pet.mood="nervous"
      end
    end
    self.pets=({:fishes => [], :dogs => [], :cats => []})
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end


  # code goes here
end