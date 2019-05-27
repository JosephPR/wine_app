# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Varietal.destroy_all
Category.destroy_all


red = Category.create(name: "Red");
white = Category.create(name: "White");


Varietal.create(
   name: "Pinot Noir",
   description: "Light-body, earthy",
   category: red);
Varietal.create(
   name: "Barbera",
   description: "ruby- red, medium body,
   dark fruit notes", category: red);
Varietal.create(
  name: "Chardonay",
   description: "medium-full body, barn notes ex.hay,grass",
    category: white);
