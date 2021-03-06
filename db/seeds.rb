# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

ChatRoom.destroy_all
Donation.destroy_all
Item.destroy_all
Look.destroy_all
User.destroy_all


puts "creating Users"
yuka = User.create!(
  username: "Yuka",
  email: "yuka@gmail.com",
  password: "123456"
  )
file = URI.open('https://avatars1.githubusercontent.com/u/40887017?s=460&v=4')
yuka.photo.attach(io: file, filename: 'yuka.jpg', content_type: 'image/jpg')

yuichiro = User.create!(
  username: "Yuichiro",
  email: "yuichiro@gmail.com",
  password: "123456"
)
file = URI.open('https://avatars0.githubusercontent.com/u/40255442?s=460&v=4')
yuichiro.photo.attach(io: file, filename: 'yuichiro.jpg', content_type: 'image/jpg')

noemi = User.create!(
  username: "Noemi",
  email: "noemi@gmail.com",
  password: "123456"
)
file = URI.open('https://avatars0.githubusercontent.com/u/56534210?s=460&v=4')
noemi.photo.attach(io: file, filename: 'noemi.jpg', content_type: 'image/jpg')

soda = User.create!(
  username: "Soda",
  email: "soda@gmail.com",
  password: "123456"
)
file = URI.open('https://avatars1.githubusercontent.com/u/6465116?s=460&v=4')
soda.photo.attach(io: file, filename: 'soda.jpg', content_type: 'image/jpg')

erica = User.create!(
  username: "Erica",
  email: "erica@gmail.com",
  password: "123456"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583929113/girl.jpg')
erica.photo.attach(io: file, filename: 'girl.jpg', content_type: 'image/jpg')

beth = User.create!(
  username: "Beth",
  email: "beth@gmail.com",
  password: "123456"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583929128/girl2.jpg')
beth.photo.attach(io: file, filename: 'girl2.jpg', content_type: 'image/jpg')

brad = User.create!(
  username: "Brad",
  email: "brad@gmail.com",
  password: "123456"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975947/boy.jpg')
brad.photo.attach(io: file, filename: 'boy.jpg', content_type: 'image/jpg')


puts "creating shirts"

striped_shirt = Item.create!(
  name: "Striped Shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "stripe"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975705/striped-shirt.png')
striped_shirt.photo.attach(io: file, filename: 'striped-shirt.png', content_type: 'image/png')

white_tshirt = Item.create!(
  name: "Simple T-Shirt",
  size: "M",
  user: yuichiro,
  category: Item::CATEGORIES[0],
  tag_list: "white"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/white-shirt.png')
white_tshirt.photo.attach(io: file, filename: 'white-shirt.png', content_type: 'image/png')

teal_sweater = Item.create!(
  name: "Teal Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "teal"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/teal_sweater.png')
teal_sweater.photo.attach(io: file, filename: 'teal_sweater.png', content_type: 'image/png')

blue_sweater = Item.create!(
  name: "Blue Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/blue_sweater.png')
blue_sweater.photo.attach(io: file, filename: 'blue_sweater.png', content_type: 'image/png')

white_shirt = Item.create!(
  name: "White Shirt",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[0],
  tag_list: "white"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/white_shirt.png')
white_shirt.photo.attach(io: file, filename: 'white_shirt.png', content_type: 'image/png')

orange_blouse = Item.create!(
  name: "Orange Blouse",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "orange"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/orange_blouse.png')
orange_blouse.photo.attach(io: file, filename: 'orange_blouse.png', content_type: 'image/png')

green_blouse = Item.create!(
  name: "Green Blouse",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "green"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982067/green_blouse.png')
green_blouse.photo.attach(io: file, filename: 'green_blouse.png', content_type: 'image/png')

black_sweater = Item.create!(
  name: "Comfy Sweater",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "black"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975702/black_sweater.png')
black_sweater.photo.attach(io: file, filename: 'black_sweater.png', content_type: 'image/png')

white_sweater = Item.create!(
  name: "White Sweater",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "white"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975702/white_sweater.png')
white_sweater.photo.attach(io: file, filename: 'white_sweater.png', content_type: 'image/png')

pink_sweater = Item.create!(
  name: "Pink Sweater",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "pink"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583978976/pink_sweater.png')
pink_sweater.photo.attach(io: file, filename: 'pink_sweater.png', content_type: 'image/png')

grey_vneck = Item.create!(
  name: "Grey V-Neck Sweater",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "grey"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/grey_vneck.png')
grey_vneck.photo.attach(io: file, filename: 'grey_vneck.png', content_type: 'image/png')

red_sweater = Item.create!(
  name: "Red Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "red"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/red_sweater.png')
red_sweater.photo.attach(io: file, filename: 'red_sweater.png', content_type: 'image/png')

green_sweater = Item.create!(
  name: "Green Sweater",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "green"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/green_sweater.png')
green_sweater.photo.attach(io: file, filename: 'green_sweater.png', content_type: 'image/png')

hot_pink_sweater = Item.create!(
  name: "Hot Pink Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "pink"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/hot_pink_sweater.png')
hot_pink_sweater.photo.attach(io: file, filename: 'hot_pink_sweater.png', content_type: 'image/png')

grey_cardigan = Item.create!(
  name: "Grey Cardigan",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "grey"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/grey_cardigan.png')
grey_cardigan.photo.attach(io: file, filename: 'grey_cardigan.png', content_type: 'image/png')

long_stripe = Item.create!(
  name: "Striped Shirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "stripe"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982068/long_stripe.png')
long_stripe.photo.attach(io: file, filename: 'long_stripe.png', content_type: 'image/png')

yellow_sweater = Item.create!(
  name: "Yellow Sweater",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "yellow"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/yellow_sweater.png')
yellow_sweater.photo.attach(io: file, filename: 'yellow_sweater.png', content_type: 'image/png')

pink_shirt = Item.create!(
  name: "Pink Shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "pink"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/pink_shirt.png')
pink_shirt.photo.attach(io: file, filename: 'pink_shirt.png', content_type: 'image/png')

green_shirt = Item.create!(
  name: "Green Shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "green"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/green_shirt.png')
green_shirt.photo.attach(io: file, filename: 'green_shirt.png', content_type: 'image/png')

brown_shirt = Item.create!(
  name: "Brown Shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "brown"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005966/brown_shirt.png')
brown_shirt.photo.attach(io: file, filename: 'brown_shirt.png', content_type: 'image/png')

red_tank = Item.create!(
  name: "Red Tank",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "red"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027029/red_tank.png')
red_tank.photo.attach(io: file, filename: 'red_tank.png', content_type: 'image/png')

black_cardigan = Item.create!(
  name: "Black Cardigan",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "black"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027029/black_cardigan.png')
black_cardigan.photo.attach(io: file, filename: 'black_cardigan.png', content_type: 'image/png')

green_tank = Item.create!(
  name: "Green Tank",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "green"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027045/green_tank.png')
green_tank.photo.attach(io: file, filename: 'green_tank.png', content_type: 'image/png')

orange_shirt = Item.create!(
  name: "Orange Shirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "orange"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027046/orange_shirt.png')
orange_shirt.photo.attach(io: file, filename: 'orange_shirt.png', content_type: 'image/png')

stripes = Item.create!(
  name: "Striped Shirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[0],
  tag_list: "stripe"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027053/stripes.png')
stripes.photo.attach(io: file, filename: 'stripes.png', content_type: 'image/png')

stripe = Item.create!(
  name: "Striped Shirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "stripe"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027059/stripe.png')
stripe.photo.attach(io: file, filename: 'stripe.png', content_type: 'image/png')

blue_tank = Item.create!(
  name: "Blue Tank",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027060/blue_tank.png')
blue_tank.photo.attach(io: file, filename: 'blue_tank.png', content_type: 'image/png')

pink_long = Item.create!(
  name: "Pink Long Sleeve",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "pink"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584065699/pink_long.png')
pink_long.photo.attach(io: file, filename: 'pink_long.png', content_type: 'image/png')

doraemon = Item.create!(
  name: "Doraemon",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[0],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584065704/doraemon.png')
doraemon.photo.attach(io: file, filename: 'doraemon.png', content_type: 'image/png')


puts "creating botoms"

yuichiro_jeans = Item.create!(
  name: "Jeans",
  size: "M",
  user: yuichiro,
  category: Item::CATEGORIES[1],
  tag_list: "jeans"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/yuichiro-jeans.png')
yuichiro_jeans.photo.attach(io: file, filename: 'yuichiro-jeans.png', content_type: 'image/png')

pink_trousers = Item.create!(
  name: "Pink Trousers",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[1],
  tag_list: "pink"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/pink_trousers.png')
pink_trousers.photo.attach(io: file, filename: 'pink_trousers.png', content_type: 'image/png')

brown_pants = Item.create!(
  name: "Brown Pants",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[1],
  tag_list: "brown"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/brown_pants.png')
brown_pants.photo.attach(io: file, filename: 'brown_pants.png', content_type: 'image/png')

soda_jeans = Item.create!(
  name: "Jeans",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[1],
  tag_list: "jeans"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/soda_jeans.png')
soda_jeans.photo.attach(io: file, filename: 'soda_jeans.png', content_type: 'image/png')

noemi_jeans = Item.create!(
  name: "Jeans",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "jeans"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/noemi_jeans.png')
noemi_jeans.photo.attach(io: file, filename: 'noemi_jeans.png', content_type: 'image/png')

short_skirt = Item.create!(
  name: "Plaid Skirt",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/short_skirt.png')
short_skirt.photo.attach(io: file, filename: 'short_skirt.png', content_type: 'image/png')

white_skirt = Item.create!(
  name: "Long Skirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975702/white_skirt.png')
white_skirt.photo.attach(io: file, filename: 'white_skirt.png', content_type: 'image/png')

grey_trousers = Item.create!(
  name: "Grey Trousers",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "trousers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/grey_trousers.png')
grey_trousers.photo.attach(io: file, filename: 'grey_trousers.png', content_type: 'image/png')

brown_skirt = Item.create!(
  name: "Brown Skirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/brown_skirt.png')
brown_skirt.photo.attach(io: file, filename: 'brown_skirt.png', content_type: 'image/png')

grey_skirt = Item.create!(
  name: "Grey Long Skirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/grey_skirt.png')
grey_skirt.photo.attach(io: file, filename: 'grey_skirt.png', content_type: 'image/png')

pleated_skirt = Item.create!(
  name: "Pleated Skirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/pleated_skirt.png')
pleated_skirt.photo.attach(io: file, filename: 'pleated_skirt.png', content_type: 'image/png')

black_skirt = Item.create!(
  name: "Plaid Skirt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/black_skirt.png')
black_skirt.photo.attach(io: file, filename: 'black_skirt.png', content_type: 'image/png')

denim_skirt = Item.create!(
  name: "Denim Skirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005964/denim_skirt.png')
denim_skirt.photo.attach(io: file, filename: 'denim_skirt.png', content_type: 'image/png')

blue_trousers = Item.create!(
  name: "Blue Trousers",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "trousers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/blue_trousers.png')
blue_trousers.photo.attach(io: file, filename: 'blue_trousers.png', content_type: 'image/png')

leather_skirt = Item.create!(
  name: "Leather Skirt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "skirt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/leather_skirt.png')
leather_skirt.photo.attach(io: file, filename: 'leather_skirt.png', content_type: 'image/png')

red_pants = Item.create!(
  name: "Red Pants",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "red"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/red_pants.png')
red_pants.photo.attach(io: file, filename: 'red_pants.png', content_type: 'image/png')

shorts = Item.create!(
  name: "Jean Shorts",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "shorts"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027043/shorts.png')
shorts.photo.attach(io: file, filename: 'shorts.png', content_type: 'image/png')

trouser = Item.create!(
  name: "Trouser",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "trouser"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027063/trouser.png')
trouser.photo.attach(io: file, filename: 'trouser.png', content_type: 'image/png')

jean = Item.create!(
  name: "Jean",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[1],
  tag_list: "jeans"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027063/jean.png')
jean.photo.attach(io: file, filename: 'jean.png', content_type: 'image/png')


puts "creating shoes"

star_shoes = Item.create!(
  name: "Star Shoes",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/star-shoes.png')
star_shoes.photo.attach(io: file, filename: 'star-shoes.png', content_type: 'image/png')

flats = Item.create!(
  name: "Star Shoes",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[2],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982067/flats.png')
flats.photo.attach(io: file, filename: 'flats.png', content_type: 'image/png')

sneakers = Item.create!(
  name: "Running Shoes",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "sneakers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975703/sneakers.png')
sneakers.photo.attach(io: file, filename: 'sneakers.png', content_type: 'image/png')

formal_shoes = Item.create!(
  name: "Formal Shoes",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "heels"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/formal_shoes.png')
formal_shoes.photo.attach(io: file, filename: 'formal_shoes.png', content_type: 'image/png')

black_boots = Item.create!(
  name: "Black Boots",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "boots"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/black_boots.png')
black_boots.photo.attach(io: file, filename: 'black_boots.png', content_type: 'image/png')

red_heels = Item.create!(
  name: "Red Heels",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "heels"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027043/red_heels.png')
red_heels.photo.attach(io: file, filename: 'red_heels.png', content_type: 'image/png')

yuichiro_sneakers = Item.create!(
  name: "Sneakers",
  size: "M",
  user: yuichiro,
  category: Item::CATEGORIES[2],
  tag_list: "sneakers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/yuichiro_sneakers.png')
yuichiro_sneakers.photo.attach(io: file, filename: 'yuichiro_sneakers.png', content_type: 'image/png')

yuka_shoes = Item.create!(
  name: "Sneakers",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[2],
  tag_list: "sneakers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/yuka_shoes.png')
yuka_shoes.photo.attach(io: file, filename: 'yuka_shoes.png', content_type: 'image/png')

ugg = Item.create!(
  name: "Ugg Boots",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "boots"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/ugg.png')
ugg.photo.attach(io: file, filename: 'ugg.png', content_type: 'image/png')

adidas = Item.create!(
  name: "Adidas Sneakers",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[2],
  tag_list: "sneakers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982067/adidas.png')
adidas.photo.attach(io: file, filename: 'adidas.png', content_type: 'image/png')

red_flats = Item.create!(
  name: "Red Flats",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[2],
  tag_list: "flats"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005964/red_flats.png')
red_flats.photo.attach(io: file, filename: 'red_flats.png', content_type: 'image/png')

black_heels = Item.create!(
  name: "Black Heels",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[2],
  tag_list: "heels"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027054/black_heels.png')
black_heels.photo.attach(io: file, filename: 'black_heels.png', content_type: 'image/png')

mule = Item.create!(
  name: "Black Mules",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "mules"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027065/mule.png')
mule.photo.attach(io: file, filename: 'mule.png', content_type: 'image/png')

pink_shoes = Item.create!(
  name: "Pink Sneakers",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[2],
  tag_list: "sneakers"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584065660/pink_shoes.png')
pink_shoes.photo.attach(io: file, filename: 'pink_shoes.png', content_type: 'image/png')


puts "creating outerwear"

suit_jacket = Item.create!(
  name: "Blazer",
  size: "M",
  user: soda,
  category: Item::CATEGORIES[3],
  tag_list: "blazer"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/suit_jacket.png')
suit_jacket.photo.attach(io: file, filename: 'suit_jacket.png', content_type: 'image/png')

stripe_blazer = Item.create!(
  name: "Striped Blazer",
  size: "M",
  user: erica,
  category: Item::CATEGORIES[3],
  tag_list: "blazer"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584003467/stripe_blazer.png')
stripe_blazer.photo.attach(io: file, filename: 'stripe_blazer.png', content_type: 'image/png')

red_blazer = Item.create!(
  name: "Red Blazer",
  size: "M",
  user: erica,
  category: Item::CATEGORIES[3],
  tag_list: "blazer"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584003467/red_blazer.png')
red_blazer.photo.attach(io: file, filename: 'red_blazer.png', content_type: 'image/png')

flower_blazer = Item.create!(
  name: "Flower Blazer",
  size: "M",
  user: beth,
  category: Item::CATEGORIES[3],
  tag_list: "blazer"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584003467/flower_blazer.png')
flower_blazer.photo.attach(io: file, filename: 'flower_blazer.png', content_type: 'image/png')

black_jacket = Item.create!(
  name: "Black Jacket",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[3],
  tag_list: "jacket"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/black_jacket.png')
black_jacket.photo.attach(io: file, filename: 'black_jacket.png', content_type: 'image/png')

leather_jacket = Item.create!(
  name: "Leather Jacket",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[3],
  tag_list: "jacket"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583978937/leather_jacket.png')
leather_jacket.photo.attach(io: file, filename: 'leather_jacket.png', content_type: 'image/png')

denim_jacket = Item.create!(
  name: "Denim Jacket",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[3],
  tag_list: "jacket"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/denim_jacket.png')
denim_jacket.photo.attach(io: file, filename: 'denim_jacket.png', content_type: 'image/png')

grey_jacket = Item.create!(
  name: "Grey Jacket",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[3],
  tag_list: "jacket"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/grey_jacket.png')
grey_jacket.photo.attach(io: file, filename: 'grey_jacket.png', content_type: 'image/png')

long_coat = Item.create!(
  name: "Grey Jacket",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[3],
  tag_list: "coat"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982067/long_coat.png')
long_coat.photo.attach(io: file, filename: 'long_coat.png', content_type: 'image/png')

robe = Item.create!(
  name: "Grey Robe",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[3],
  tag_list: "robe"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982067/robe.png')
robe.photo.attach(io: file, filename: 'robe.png', content_type: 'image/png')

windbreaker = Item.create!(
  name: "Windbreaker",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[3],
  tag_list: "blue"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005964/windbreaker.png')
windbreaker.photo.attach(io: file, filename: 'windbreaker.png', content_type: 'image/png')

fleece_jacket = Item.create!(
  name: "Fleece Jacket",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[3],
  tag_list: "fleece"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/fleece_jacket.png')
fleece_jacket.photo.attach(io: file, filename: 'fleece_jacket.png', content_type: 'image/png')

down = Item.create!(
  name: "Down Coat",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[3],
  tag_list: "down"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027048/down.png')
down.photo.attach(io: file, filename: 'down.png', content_type: 'image/png')

burgandy = Item.create!(
  name: "Burgandy Leather Jacket",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[3],
  tag_list: "burgandy"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584065677/burgandy.png')
burgandy.photo.attach(io: file, filename: 'burgandy.png', content_type: 'image/png')


puts "creating accessories"

glasses = Item.create!(
  name: "Glasses",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "glasses"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975704/glasses.png')
glasses.photo.attach(io: file, filename: 'glasses.png', content_type: 'image/png')

bandana = Item.create!(
  name: "Bandana",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "scarf"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583975702/bandana.png')
bandana.photo.attach(io: file, filename: 'bandana.png', content_type: 'image/png')

black_belt = Item.create!(
  name: "Black Belt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "belt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982063/black_belt.png')
black_belt.photo.attach(io: file, filename: 'black_belt.png', content_type: 'image/png')

brown_bag = Item.create!(
  name: "Brown Bag",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "bag"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/brown_bag.png')
brown_bag.photo.attach(io: file, filename: 'brown_bag.png', content_type: 'image/png')

scarf = Item.create!(
  name: "Scarf",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "scarf"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/scarf.png')
scarf.photo.attach(io: file, filename: 'scarf.png', content_type: 'image/png')

long_bag = Item.create!(
  name: "Brown Bag",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "bag"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982064/long_bag.png')
long_bag.photo.attach(io: file, filename: 'long_bag.png', content_type: 'image/png')

round_belt = Item.create!(
  name: "Black Belt",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "belt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982065/round_belt.png')
round_belt.photo.attach(io: file, filename: 'round_belt.png', content_type: 'image/png')

backpack = Item.create!(
  name: "Backpack",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "backpack"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/backpack.png')
backpack.photo.attach(io: file, filename: 'backpack.png', content_type: 'image/png')

brown_belt = Item.create!(
  name: "Brown Belt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "belt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/brown_belt.png')
brown_belt.photo.attach(io: file, filename: 'brown_belt.png', content_type: 'image/png')

black_bag = Item.create!(
  name: "Black Belt",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "belt"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/black_bag.png')
black_bag.photo.attach(io: file, filename: 'black_bag.png', content_type: 'image/png')

orange_scarf = Item.create!(
  name: "Orange Scarf",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "scarf"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982066/orange_scarf.png')
orange_scarf.photo.attach(io: file, filename: 'orange_scarf.png', content_type: 'image/png')

bag = Item.create!(
  name: "Bag",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "bag"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1583982067/bag.png')
bag.photo.attach(io: file, filename: 'bag.png', content_type: 'image/png')

beanie = Item.create!(
  name: "Beanie",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "hat"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005964/beanie.png')
beanie.photo.attach(io: file, filename: 'beanie.png', content_type: 'image/png')

sunglasses = Item.create!(
  name: "Sunglasses",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "glasses"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584005965/sunglasses.png')
sunglasses.photo.attach(io: file, filename: 'sunglasses.png', content_type: 'image/png')

red_bag = Item.create!(
  name: "Red Bag",
  size: "M",
  user: noemi,
  category: Item::CATEGORIES[4],
  tag_list: "bag"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027030/red_bag.png')
red_bag.photo.attach(io: file, filename: 'red_bag.png', content_type: 'image/png')

coach_bag = Item.create!(
  name: "Coach Bag",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "bag"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027037/coach_bag.png')
coach_bag.photo.attach(io: file, filename: 'coach_bag.png', content_type: 'image/png')

hat = Item.create!(
  name: "Hat",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "hat"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027040/hat.png')
hat.photo.attach(io: file, filename: 'hat.png', content_type: 'image/png')

sunglasses2 = Item.create!(
  name: "Sunglasses",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "glasses"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027047/sunglasses2.png')
sunglasses2.photo.attach(io: file, filename: 'sunglasses2.png', content_type: 'image/png')

handbag = Item.create!(
  name: "Handbag",
  size: "M",
  user: yuka,
  category: Item::CATEGORIES[4],
  tag_list: "bag"
  )
file = URI.open('https://res.cloudinary.com/drihevibr/image/upload/v1584027059/handbag.png')
handbag.photo.attach(io: file, filename: 'handbag.png', content_type: 'image/png')

puts "finish"
