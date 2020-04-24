class Artist

  attr_accessor :name, :years

  @@all =[]

  def initialize(name, years)
    @name= name
    @years= years
    @@all << self 
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |x| x.artist == self end
  end 

  def galleries
    paintings.map do |x| x.gallery end 
  end 

  def cities
    galleries.map do |x| x.city end.uniq 
  end 

  def self.total_experience
    total=0
    self.all.each do |inst| total += inst.years end 
    total 
  end 

  # def paintings_per_years
  # paintings= self.paintings.count
  # years   
  # end

  def self.most_prolific 
    @@all.max do |inst| inst.paintings.count/inst.years end 
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 
end
