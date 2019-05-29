# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Varietal.destroy_all
Category.destroy_all
Note.destroy_all

#category seeds
red = Category.create(name: "Red Wines");
white = Category.create(name: "White Wines");
sparkling = Category.create(name: "Sparkling Wines");

#varietal seeds
 cabernet = Varietal.create(name: "Cabernet Sauvignon", description: "Robust, Well rounded, Full-bodied", image_url:"https://winefolly-wpengine.netdna-ssl.com/wp-content/uploads/2012/02/color-of-wine-primary-indicators.jpg", category_id: 1)
 pinot = Varietal.create(name: "Pinot Grigio", description: "Crispy, Fruity, Refreshing.", image_url:"https://winefolly.com/wp-content/uploads/2013/08/pinot-grigio-gris-wine-guide.jpg", category_id: 2)
 proscecco = Varietal.create(name: "Prosecco", description: "Dry, crisp,  fruity and the king of mimosas!", image_url:"https://static.vinepair.com/wp-content/uploads/2016/01/prosecco-header.jpg", category_id: 3)
 barbera =  Varietal.create(name: "Barbera", description: "Ruby red", image_url: "https://winefolly-wpengine.netdna-ssl.com/wp-content/uploads/2013/03/color-of-barbera-in-a-glass.jpg", category_id: 1)
 amarone =  Varietal.create(name: "Amarone", description: "Elegant, maroon color, medium body. Grapes are allowed to dry to an almost raisin like state, making this wine great for dessert. Excellent!", image_url: "https://winefolly-wpengine.netdna-ssl.com/wp-content/uploads/2015/11/Amarone-della-Valpolicella-wine-information-sheet.jpg", category_id:  1)
 albarino =  Varietal.create(name: "Albariño", description: "Crispy, Fruity, Refreshing, with hints of apples.", image_url: "https://winefolly-wpengine.netdna-ssl.com/wp-content/uploads/2017/07/Albarino-wine-grapes-glass-color-winefolly.jpg", category_id: 2)
 trebbiano =  Varietal.create(name: "Trebbiano Toscano", description: "Trebbiano in Italy and Ugni Blancin France. Found in almost any basic white Italian wine, and is actually a sanctioned ingredient of the blend used for Chianti. In France, it is often called St.Émilion, and used for Cognac and Armagnac brandy.", image_url:"https://images.slideplayer.com/34/8793453/slides/slide_14.jpg", category_id:  2)
 viognier =  Varietal.create(name: "Viognier", description: "Viognier, is one of the most difficult grapes to grow. It makes a floral and spicy white wine, medium to full-bodied and very fruity, with apricot and peach aromas.", image_url: "https://winefolly.com/wp-content/uploads/2015/12/Viognier-wine-profile-by-winefolly-excerpt.jpg", category_id: 2)
 montepulciano =  Varietal.create(name: "Montepulciano", description: "A medium to full-bodied wine, with good color and structure. Known for its quality and value.", image_url: "https://winefolly.com/wp-content/uploads/2015/10/Montepulciano-wine-excerpt.jpg", category_id: 1)

#note seeds
 note_one = Note.create(varietal_id: 1, sweetness: "Dry", acidity: "Medium", tanin: "Medium", alcohol: 14.0, body: "Full")
 note_two = Note.create(varietal_id: 2, sweetness: "Dry", acidity: "Medium", tanin: "Medium", alcohol: 12.0, body: "medium")
 note_three = Note.create(varietal_id: 3, sweetness: "Dry, semi-sweet", acidity:"low", tanin: "low", alcohol: 11.0, body: "light")
 note_four = Note.create(varietal_id: 7, sweetness: "Dry, semi-sweet", acidity: "Medium", tanin: "low", alcohol: 12.0, body: "light",)
 note_five = Note.create(varietal_id: 8, sweetness: "Dry, semi-sweet", acidity: "Medium", tanin:"high", alcohol: 13.0, body: "medium")
 note_six = Note.create(varietal_id: 5, sweetness: "Dry", acidity: "Medium", tanin: "Medium", alcohol: 14.0, body: "medium")
 note_seven = Note.create(varietal_id: 6, sweetness: "Dry, semi-sweet", acidity: "high", tanin: "low", alcohol: 12.0,body: "light")
 note_eight = Note.create(varietal_id: 4, sweetness: "Dry", acidity: "Medium", tanin: "high", alcohol: 13.0, body: "medium")
 note_nine = Note.create(varietal_id: 9, sweetness: "Dry", acidity: "low", tanin: "high", alcohol: 12.0, body: "light")
