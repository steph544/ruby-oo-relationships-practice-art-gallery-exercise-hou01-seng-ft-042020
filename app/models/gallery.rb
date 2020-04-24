require 'pry'
class Gallery

  attr_reader :name, :city
  @@all =[]

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end

  def self.all
    @@all
  end 

  def paintings
    Painting.all.select do |inst| inst.gallery == self end 
  end 

  def artists
    paintings.map do |inst| inst.artist end.uniq  
  end 

  def artist_names 
    names_array=[]
    artists.select do |inst| names_array<<inst.name end 
    names_array 
  end 
  
  def most_expensive_painting
    self.paintings.max_by do |inst| inst.price
  end 
  end 
end
