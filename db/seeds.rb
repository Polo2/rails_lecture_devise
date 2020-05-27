User.destroy_all
Suit.destroy_all

puts "Creation de 2 utilisateurs"
puts " -- polo@bodi.fr - password: 000000"
puts " -- barney@stinson.fr - password: 000000"

polo = User.create!(email: "polo@bodi.fr", password: "000000", password_confirmation: "000000")
barney = User.create!(email: "barney@stinson.fr", password: "000000", password_confirmation: "000000")


puts "Création de 4 costumes sur mesure"

Suit.create!(
  name: "rouge et vert",
  description: "un petit air de Robin des bois ?",
  price_per_day: 10,
  owner: polo
)

Suit.create!(
  name: "a la russkov",
  description: "n'est-ce pas magnifique de vider la maison frand-parentale ?",
  price_per_day: 13,
  owner: polo

)

Suit.create!(
  name: "rouge et or",
  description: "Plus beau costume pour plus belle journée",
  price_per_day: 33,
  owner: polo
)

Suit.create!(
  name: "l'original barney stinson",
  description: "Wait for it ... It's gonna be .... Suit up !",
  price_per_day: 27,
  owner: barney
)

puts "#{User.count} utilisateurs crées"
puts "#{Suit.count} costumes crées"
