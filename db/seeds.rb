# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

############################################################# Categories

drinkware = Category.new({title: "Drinkware"})
drinkware.save!
p "drinkware category created!"
apparel = Category.new({title: "Apparel"})
apparel.save!
p "apparel category created!"
womens = Category.new({title: "Women's"})
womens.save!
p "womens category created!"
food = Category.new({title: "Food/Beverage"})
food.save!
p "food category created!"


Subcategory.new({parent_category_id: apparel.id, child_category_id: womens.id}).save!
p "Apparal - Women's subcategory created!"


############################################################# Products


dripper = Product.new({
  title: "Kinto Carat Coffee Dripper and Pot",
  category_id: drinkware.id,
  pricing: 64.00
  })
dripper.save!

p "Dripper created!"

jacket_black = Product.new({
  title: "Patagonia Hybrid Jacket",
  category_id: womens.id,
  option: "Black",
  pricing: 149.00
  })
jacket_black.save!

p "Jacket(black) created!"

jacket_white = Product.new({
  title: "Patagonia Hybrid Jacket",
  category_id: womens.id,
  option: "White",
  pricing: 149.00
  })
jacket_white.save!

p "Jacket(white) created!"

bar_butter = Product.new({
  title: "Dick Taylor Bars",
  category_id: food.id,
  option: "Brown Butter with Nibs and Sea Salt",
  pricing: 8.50
  })
bar_butter.save!

p "Bar(butter) created!"

bar_fleur = Product.new({
  title: "Dick Taylor Bars",
  category_id: food.id,
  option: "Fleur De Sel",
  pricing: 8.50
  })
bar_fleur.save!

p "Bar(fleur) created!"

bar_black = Product.new({
  title: "Dick Taylor Bars",
  category_id: food.id,
  option: "Black Fig",
  pricing: 8.50
  })
bar_black.save!

p "Bar(fig) created!"

bar_maple = Product.new({
  title: "Dick Taylor Bars",
  category_id: food.id,
  option: "Maple Coconut",
  pricing: 8.50
  })
bar_maple.save!

p "bar(maple) created!"

########################################################## Information

jackets = Product.all.select {|p| p.title == "Patagonia Hybrid Jacket"}
bars = Product.all.select {|p| p.title == "Dick Taylor Bars"}


dripper_info = [
            "4.4\" x 8\" x 5.5\"",
            "Superior stainless-steel and heat-resistant glass glass",
            "Set comes with a stainless-steel filter that allows for greater extraction of coffee oils than a paper filter, resulting in a richer and smoother coffee",
            "Pot, dripper, lid: microwave and dishwasher safe",
            "Filter, holder, silicone ring: dishwasher safe",
            "24.3oz"
        ]

jackets_info = [
            "93% polyester/7% spandex stretch woven with fleece grid backer",
            "3-layer Polartec Windbloc stretch-woven polyester soft-shell with a DWR (durable water repellent) finish",
            "Stretchy, breathable, double-weave soft-shell fabric on side panels, underarms and cuffs",
            "High, harness- and pack-compatible handwarmer pockets and one interior chest pocket have brushed tricot lining"
        ]

bars_info = [
            "Using the finest cacao, and a modern take on traditional European technique, we are able to fully realize the potential of the beans we source.",
            "All of our chocolate is carefully crafted from the bean in our small factory in Northern California.",
            "2 oz"
        ]

dripper_info.each do |info|
  Information.new({body: info, product_id: dripper.id}).save!
end

p "Dripper info added!"

jackets.each do |jacket|
  jackets_info.each do |info|
    Information.new({body: info, product_id: jacket.id}).save!
  end
end

p "Jacket info added!"

bars.each do |bar|
  bars_info.each do |info|
    Information.new({body: info, product_id: bar.id}).save!
  end
end

p "Bar info added!"

# ############################################## Images

Image.new({
  title: "Kinto Carat Coffee Dripper and pot",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/items/default_images/000/000/610/full_size/kinto_carat_coffee_dripper_and_pot.jpg?1510489804",
  product_id: dripper.id
  }).save!

Image.new({
  title: "White Patagonia Jacket",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389",
  product_id: jacket_white.id
  }).save!

Image.new({
  title: "Black Patagonia Jacket",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/000/899/full_size/patagonia_women_s_adze_hybrid_jacket___black.jpg?1510663389",
  product_id: jacket_black.id
  }).save!

Image.new({
  title: "Brown butter with nibs + sea salt",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/717/full_size/dick_taylor_bars_with_inclusions___brown_butter_with_nibs___sea_salt.jpg?1510664223",
  product_id: bar_butter.id
  }).save!

Image.new({
  title: "Fleur De Sel",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/716/full_size/dick_taylor_bars_with_inclusions___fleur_de_sel.jpg?1510664222",
  product_id: bar_fleur.id
  }).save!

Image.new({
  title: "Black Fig",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/715/full_size/dick_taylor_bars_with_inclusions___black_fig.jpg?1510664221",
  product_id: bar_black.id
  }).save!

Image.new({
  title: "Maple Coconut",
  url: "https://gemnote-images-production.s3-us-west-2.amazonaws.com/images/images/000/001/714/full_size/dick_taylor_bars_with_inclusions___maple_coconut.jpg?1510664221",
  product_id: bar_maple.id
  }).save!

p "Images added!"

######################### Options


# jackets = Product.all.select {|p| p.title == "Patagonia Hybrid Jacket"}
# bars = Product.all.select {|p| p.title == "Dick Taylor Bars"}

Option.new({
  product_id: jacket_black.id,
  option_id: jacket_white.id
}).save!

Option.new({
  product_id: jacket_white.id,
  option_id: jacket_black.id
}).save!

p "Jacket options set!"

bars.each do |bar1|
  bars.each do |bar2|
    unless bar1.id == bar2.id
      Option.new({
        product_id: bar1.id,
        option_id: bar2.id
        }).save!
      end
  end
end

p "Bar options set!"

p "Done"
