# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# Destroys all previous data before creating our new data
User.destroy_all

# New user MADS
mads = User.new(
  email: "mad3@gmail.com",
  password: "password")
# Adds user's photo
mads.remote_photo_url = "https://avatars3.githubusercontent.com/u/31936412?s=460&v=4"
# Saves new user
mads.save!

# New user floor
floor = User.new(
  email: "fl00r@gmail.com",
  password: "password")
# Adds user's photo
floor.remote_photo_url = "https://avatars3.githubusercontent.com/u/31489891?s=400&v=4"
# Saves new user
floor.save!

# New user Mark
mark = User.new(
  email: "mark@gmail.com",
  password: "password")
# Adds user's photo
mark.remote_photo_url = "https://avatars1.githubusercontent.com/u/35243620?s=400&v=4"
# Saves new user
mark.save!

# New user Iris
iris = User.new(
  email: "irisi@gmail.com",
  password: "password")
# Adds user's photo
iris.remote_photo_url = "https://avatars1.githubusercontent.com/u/35067263?s=460&v=4"
# Saves new user
iris.save!



#ADD ITEM Furniture ======================

# New item
item = Item.new(
  name: "Cosy Chair",
  description: "For one person or a lot more..man not included.",
  user_id: mads.id,
  category: "Furniture",
  price: 5.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item.shop_location = shop[:name]
item.latitude = shop[:latitude]
item.longitude = shop[:longitude]
# Adds an Item photo
item.remote_photo_url = "https://images.dlf.org.uk/mee/products/full/0109142-0038332-22980.jpg"
# Saves the new item
item.save!

#ADD ITEM ======================END

#ADD ITEM Furniture ======================

item = Item.new(
  name: "coffin couch",
  description: "For one person or a lot more..
  dead or alive.purple can also be used differently",
  user_id: mads.id,
  category: "Furniture",
  price: 5.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item.shop_location = shop[:name]
item.latitude = shop[:latitude]
item.longitude = shop[:longitude]
# Adds an Item photo
item.remote_photo_url = "https://img0.etsystatic.com/000/0/5531290/il_570xN.74787356.jpg"
# Saves the new item
item.save!

#====END ADD ITEM

# New item
item2 = Item.new(
  name: "Green chair ",
  description: " Chair for inside or outside night orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Toys",
  price: 600.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "https://n4.sdlcdn.com/imgs/b/x/2/Supreme-Web-Parrot-Green-Chair-SDL485959471-1-e3626.jpg"
# Saves the new item
item2.save!

#====GEDEELTE VOOR FLOOR===========

# New item
item303 = Item.new(
  name: "Radioactive science set for kids",
  description: "Ee by gum. Nobbut a lad. Tha daft apeth. Nobbut a lad nobbut a lad mardy bum any rooad by 'eck. Tell thi summat for nowt soft southern pansy. Where's tha bin ah'll gi' thi summat to rooer abaht tell thi summat for nowt aye. Soft lad t'foot o' our stairs. Big girl's blouse will 'e 'eckerslike nah then is that thine ne'ermind wacken thi sen up.",
  user_id: mark.id,
  category: "Toys",
  price: 100.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item303.shop_location = shop[:name]
item303.latitude = shop[:latitude]
item303.longitude = shop[:longitude]
# Adds an Item photo
item303.remote_photo_url = "https://gajitz.com/wp-content/uploads/2010/05/gilbert-atomic-energy-lab.jpg"
# Saves the new item
item303.save!

# #ADD ITEM ======================END

#ADD ITEM ======================LET OP CLOUDINARIAR

# New item
item2 = Item.new(
  name: "Fancy Shoe",
  description: "Super cool Adidas sneaker - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: mads.id,
  category: "Clothing",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "http://assets1.bigthink.com/system/idea_thumbnails/51963/size_1024/old_shoes_final.jpg?1375130115"
# Saves the new item
item2.save!

#ADD ITEM ======================END


# New item
item302 = Item.new(
  name: "Old iron stove",
  description: "Lorem ipsum dolor amet tacos copper mug shabby chic, post-ironic 3 wolf moon four dollar toast austin bicycle rights. Next level DIY crucifix ennui, pork belly truffaut godard shabby chic lomo locavore asymmetrical cred VHS snackwave.",
  user_id: mark.id,
  category: "Furniture",
  price: 500.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item302.shop_location = shop[:name]
item302.latitude = shop[:latitude]
item302.longitude = shop[:longitude]
# Adds an Item photo
item302.remote_photo_url = "http://images.kovels.com/price_guide/technology/stoves/stove_parlor_wild_rose_no_9_cast_iron_pierced_jewett_root_buffalo_ny.jpg"
# Saves the new item
item302.save!

#ADD ITEM ======================END

# New item
item2 = Item.new(
  name: "Dahl's BFG ",
  description: " Classic Read orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Books",
  price: 12.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "https://upload.wikimedia.org/wikipedia/en/thumb/b/b2/The_BFG_%28Dahl_novel_-_cover_art%29.jpg/220px-The_BFG_%28Dahl_novel_-_cover_art%29.jpg"
# Saves the new item
item2.save!

#ADD ITEM ======================END



# New item
item203 = Item.new(
  name: "Levi Jeans",
  description: "I found several Levi's jeans in this thrift shop. They are for tall people. Available in black and blue.",
  user_id: floor.id,
  category: "Clothing",
  price: 10.0
  )
# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item203.shop_location = shop[:name]
item203.latitude = shop[:latitude]
item203.longitude = shop[:longitude]
# Adds an Item photo
item203.remote_photo_url = "https://i.ebayimg.com/images/g/tnkAAOSwoudW4w3z/s-l300.jpg"
# Saves the new item
item203.save!
#ADD ITEM ======================END



# New item
item305 = Item.new(
  name: "Best Astrid Lindgren collection",
  description: "Class is dead, says Foucault; however, according to Reicher, it is not so much class that is dead, but rather the absurdity, and some would say the paradigm, of class. However, the subject is interpolated into a postpatriarchialist dialectic theory that includes consciousness as a totality.",
  user_id: mark.id,
  category: "Books",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item305.shop_location = shop[:name]
item305.latitude = shop[:latitude]
item305.longitude = shop[:longitude]
# Adds an Item photo
item305.remote_photo_url = "https://www.ploegsma.nl/wp-content/uploads/sites/14/2016/08/header-groot-formaat-1200x450.jpg"
# Saves the new item
item305.save!

#ADD ITEM ======================END

# New item
item201 = Item.new(
  name: "Kitchen Table",
  description: "This is a beautiful antique kitchen table with two chairs. It has a drawer as well. The table is brown and mint coloured",
  user_id: floor.id,
  category: "Furniture",
  price: 30.0
  )
# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item201.shop_location = shop[:name]
item201.latitude = shop[:latitude]
item201.longitude = shop[:longitude]
# Adds an Item photo
item201.remote_photo_url = "http://www.lineuponlinepercussion.com/wp-content/uploads/2018/01/old-style-kitchen-tables-kitchen-furniture-cool-outdoor-farmhouse-table-for-sale-rustic-elegant-design.jpg"
# Saves the new item
item201.save!
#ADD ITEM ======================END

# New item
item2 = Item.new(
  name: "Old clay mugs ",
  description: " 3 colorored mug man Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Ceramics",
  price: 12.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "https://media.wired.com/photos/5932c0fbf682204f73697a5a/master/w_660,c_limit/early-american-ceramic-mugs-linda-alexander.jpg"
# Saves the new item
item2.save!

#ADD ITEM ======================END

# New item
item202 = Item.new(
  name: "Leaf dish",
  description: "Amazing colorful leave dish. You can for example serve chocolates on it, or use it near your front door to put your keys.",
  user_id: floor.id,
  category: "Ceramic",
  price: 10.0
  )
# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item202.shop_location = shop[:name]
item202.latitude = shop[:latitude]
item202.longitude = shop[:longitude]
# Adds an Item photo
item202.remote_photo_url = "http://www.landzichthoutsberg.nl/wp-content/uploads/2014/11/IMG_1784.JPG"
# Saves the new item
item202.save!
#ADD ITEM ======================END


# New item
item2 = Item.new(
  name: "Monopoly game",
  description: " Classic game for family night orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Toys",
  price: 15.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "https://cf.geekdo-images.com/LncEhUm6lNNQjueKw-aBBH9XphA=/0x0/pic277600.jpg"
# Saves the new item
item2.save!

#ADD ITEM ======================END


# # New user Iris
# iris = User.new(
#   email: "irisi@gmail.com",
#   password: "password")
# # Adds user's photo
# iris.remote_photo_url = "https://avatars1.githubusercontent.com/u/35067263?s=460&v=4"
# # Saves new user
# iris.save!

#ADD ITEM ======================LET OP CLOUDINARIAR

# New item
item2 = Item.new(
  name: "Parrot Plate ",
  description: "Super cool parrot plate - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Ceramics",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "https://images.replacements.com/images/images2/china/C/P0000018285S0060T2.jpg"
# Saves the new item
item2.save!

#ADD ITEM ======================END

# New item
item304 = Item.new(
  name: "Cute 50s dress",
  description: "Meowing non stop for food and sometimes switches in french and say miaou just because well why not try to jump onto window and fall while scratching at wall, yet kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff sleep nap for this cat happen now, it was too purr-fect!!! chase mice. Mewl for food at 4am. ",
  user_id: mark.id,
  category: "Clothing",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item304.shop_location = shop[:name]
item304.latitude = shop[:latitude]
item304.longitude = shop[:longitude]
# Adds an Item photo
item304.remote_photo_url = "https://i.pinimg.com/736x/d1/f8/a1/d1f8a17a29d96df34a929459ecaa99e2--s-dresses-blue-dresses.jpg"
# Saves the new item
item304.save!

#ADD ITEM ======================END

#ADD ITEM ======================LET OP CLOUDINARIAR

# New item
item2 = Item.new(
  name: "Screaming plate ",
  description: " plate - screaming man Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Ceramics",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "http://www.lakesidepottery.com/Media/JPG_Images/pottery-repair-pictures/singing-lady-plate-repaired.jpg"
# Saves the new item
item2.save!

#ADD ITEM ======================END

#ADD ITEM ======================LET OP CLOUDINARIAR





# New item
item2 = Item.new(
  name: "Board Game",
  description: " Classic game for family night orem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: iris.id,
  category: "Toys",
  price: 12.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "https://images.toychamp.nl/highres/00057691/00057691_002.jpg"
# Saves the new item
item2.save!

#ADD ITEM ======================END

# New item
item301 = Item.new(
  name: "Mini pig",
  description: "Bacon ipsum dolor amet ham hock capicola meatball, kevin beef ribs frankfurter shankle porchetta filet mignon shank ham beef ribeye. Short loin pork loin beef ribs, boudin chuck tri-tip alcatra biltong pork belly brisket landjaeger rump cupim bacon. Jowl frankfurter ham hock, shankle picanha burgdoggen alcatra pork loin. Prosciutto landjaeger drumstick ham hock beef ribs bacon meatball tenderloin porchetta cupim brisket pancetta ribeye beef andouille.",
  user_id: mark.id,
  category: "Other",
  price: 5.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item301.shop_location = shop[:name]
item301.latitude = shop[:latitude]
item301.longitude = shop[:longitude]
# Adds an Item photo
item301.remote_photo_url = "http://reductress.com/wp-content/uploads/2014/12/cute-pig-in-boots1-820x500.jpg"
# Saves the new item
item301.save!

#ADD ITEM ======================END


#ADD ITEM ======================LET OP CLOUDINARIAR

# New item
item2 = Item.new(
  name: "Fancy Shoe",
  description: "Super cool Adidas sneaker - Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam iaculis id purus in venenatis. Suspendisse potenti.
  Duis euismod ligula felis, ut auctor est efficitur vel. Etiam pulvinar lacus nunc,",
  user_id: mads.id,
  category: "Clothing",
  price: 3.0
  )

# Selects a randsom shop
shop = Item::SHOP_NAME_LAT_LONG[:shops].sample
item2.shop_location = shop[:name]
item2.latitude = shop[:latitude]
item2.longitude = shop[:longitude]
# Adds an Item photo
item2.remote_photo_url = "http://assets1.bigthink.com/system/idea_thumbnails/51963/size_1024/old_shoes_final.jpg?1375130115"
# Saves the new item
item2.save!

#ADD ITEM ======================END





