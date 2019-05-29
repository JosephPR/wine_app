# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Varietal.destroy_all
Category.destroy_all


red = Category.create(name: "Red Wines");
white = Category.create(name: "White Wines");
sparkling = Category.create(name: "Sparkling Wines");

#
 pinot = Varietal.create(name: "Pinot Grigio", description: "Crispy, Fruity, Refreshing, with hints of apples.", image_url:"https://winefolly.com/wp-content/uploads/2013/08/pinot-grigio-gris-wine-guide.jpg")
 cabernet = Varietal.create(name: "Cabernet Sauvignon", description: "Currant, Plum, Black Cherry & Spice, with notes of Olive, Vanilla Mint, Tobacco, Toasty Cedar, Anise, Pepper & Herbs. Full-bodied wines with great depth that improve with aging. Cabernet spends from 15 to 30 months aging in American & French Oak barrels which tend to soften the tannins, adding the toasty cedar & vanilla flavors.", image_url:"https://winefolly-wpengine.netdna-ssl.com/wp-content/uploads/2012/02/color-of-wine-primary-indicators.jpg")
proscecco = Varietal.create(name: "Prosecco", description: "dry, fruity, bubbly fun and the king of mimosas!", image_url:"https://static.vinepair.com/wp-content/uploads/2016/01/prosecco-header.jpg")
