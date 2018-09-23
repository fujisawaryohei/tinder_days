# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@hida=User.new(name:"ヒダッチ",email:"hogehoge@example.com",password:"hogehoge",user_image:"https://pbs.twimg.com/media/DldAd8TUwAYp7_l.jpg",favorite:"齋藤飛鳥",group:"乃木坂46")

@usa=User.new(name:"宇佐見",email:"usausa@exmplae.com",password:"usausa",user_image:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-1/p320x320/37350841_218726978962248_4732265468620963840_n.jpg?_nc_cat=0&oh=c64a9c964235892bf8e9105bdde58313&oe=5BEE2D7A",favorite:"小坂奈緒",group:"けやき坂46")

@fuji=User.new(name:"不眠の藤沢",email:"fujifuji@example.com",password:"fujifuji",user_image:"https://scontent-nrt1-1.xx.fbcdn.net/v/t1.0-1/p320x320/30265239_441196076336492_4556757823412764672_n.jpg?_nc_cat=0&oh=293f7c9c8d322b3570c4af4e60d132a8&oe=5C36D6BF",favorite:"生田絵梨花",group:"乃木坂46")

@sugi=User.new(name:"杉山裕磨",email:"sugisugi@example.com",password:"sugisugi",password:"sugisugi",user_image:"https://pbs.twimg.com/profile_images/1027631123877179393/vSYpTbQt_400x400.jpg",favorite:"伊藤純奈",group:"乃木坂46")

@hida.save
@usa.save
@fuji.save
@sugi.save
