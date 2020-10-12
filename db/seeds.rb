# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


RecipeIngredient.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
User.destroy_all


sisan = User.create(name: "Sisan", allergy: "strawberries")
sam = User.create(name: "Sam", allergy: "shrimp")
roman = User.create(name: "Roman", allergy: "pork")
shelby = User.create(name: "Shelby", allergy: "peanut")
elias = User.create(name: "Elias", allergy: "wheat")
mary = User.create(name: "Mary", allergy: "peanut")
bryan = User.create(name: "Bryan", allergy: "shrimp")


fried_shrimp = Recipe.create(name: "fried shrimp", user_id: User.all.sample.id)
pulled_pork = Recipe.create(name: "pulled pork", user_id: User.all.sample.id)
scrambled_eggs = Recipe.create(name: "scrambled eggs", user_id: User.all.sample.id)
peanut_butter_soup = Recipe.create(name: "peanut butter soup", user_id: User.all.sample.id)
prime_possum = Recipe.create(name: "prime possum", user_id: User.all.sample.id)
lemonade = Recipe.create(name: "lemonade", user_id: User.all.sample.id)
mac = Recipe.create(name: "mac and cheese", user_id: User.all.sample.id)
# Not in any Recipe:
# - wheat 


shrimp = Ingredient.create(name: "shrimp")
pork = Ingredient.create(name: "pork")
eggs = Ingredient.create(name: "eggs")
peanut = Ingredient.create(name: "peanut")
wheat = Ingredient.create(name: "wheat")
possum_meat = Ingredient.create(name: "possum meat")
cheese = Ingredient.create(name: "cheese")
lemon = Ingredient.create(name: "lemon")
strawberries = Ingredient.create(name: "strawberries")


20.times { RecipeIngredient.create(recipe_id: Recipe.all.sample.id, ingredient_id: Ingredient.all.sample.id) }