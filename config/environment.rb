require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

artist1=Artist.new("Stephanie", 2)
artist2=Artist.new("Mark", 2)

gallery1= Gallery.new("TX", "houston")
gallery2=Gallery.new("LA", "louisiana")

painting1=Painting.new("vangogh", 23, artist1, gallery1)
painting2=Painting.new("Leonardo", 5, artist2, gallery2)
painting3=Painting.new("Donatello", 26, artist1, gallery2)
painting4=Painting.new("Monet", 27, artist2, gallery1)
painting5=Painting.new("Someone", 26, artist2, gallery1)
painting6=Painting.new("Elijah", 26, artist2, gallery1)

binding.pry 
0

