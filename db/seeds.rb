# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
resp = open(url).read
result = JSON.parse(resp)

c = ['Bellini', "Espresso Martini", "Tequila", "Mojito", "Margherita", "JagerBomb", ""]
keys = ["z31byezcyrhzkdqq3y9putgdwkfp", "ohcoc1abswwaupdiqfo7ut0gfku2", "jgvsgq2p9z85uwiteiiq5abj5d70", "oaxr9vhzgk84qfrerps88jatby3n"]

for i in result["drinks"]
  ingredient = Ingredient.create(name: i['strIngredient1'])
  p "created #{ingredient.name}"
end

# 10.times do
#   cocktail = Cocktail.create(name: c.sample, images: [keys.sample])
#   p "created #{cocktail.name}"
# end

