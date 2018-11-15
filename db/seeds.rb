# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

i1 = Ingredient.create(name: "lemon")
i2 = Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "apple juice")
Ingredient.create(name: "ginger")
Ingredient.create(name: "vodka")

c1 = Cocktail.create(name:"mojito")
c2 = Cocktail.create(name:"vokaplle")

d1 = Dose.new(description:"1cup")
d1.cocktail = c1
d1.ingredient = i1
d1.save!

d2 = Dose.new(description:"2cups")
d2.cocktail = c2
d2.ingredient = i2
d2.save!

