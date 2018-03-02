# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Destroys all previous data before creating our new data
User.destroy_all

# New user
mads = User.new(
  email: "mad3@gmail.com",
  password: "password")
# Adds user's photo
mads.remote_photo_url = "https://avatars3.githubusercontent.com/u/31936412?s=460&v=4"
# Saves new user
mads.save!

# New item
item = Item.new(
  name: "Fancy Shoe",
  description: "Super cool Adidas sneaker",
  user_id: mads.id,
  category: "Clothing",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item.shop_location = shop[:name]
item.latitude = shop[:latitude]
item.longitude = shop[:longitude]
# Adds an Item photo
item.remote_photo_url = "http://res.cloudinary.com/datttsbru/image/upload/v1519986352/vi6dzw5b3gvvwa9cut3z.jpg"
# Saves the new item
item.save!
