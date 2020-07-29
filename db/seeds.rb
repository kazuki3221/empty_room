Room.create(number:201,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:202,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:203,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:205,floor:2,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:206,floor:2,room_type:"ツイン",side:"車道側",smoke:false)
Room.create(number:207,floor:2,room_type:"ツイン",side:"車道側",smoke:false)
Room.create(number:208,floor:2,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:209,floor:2,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:210,floor:2,room_type:"ダブル",side:"車道側",smoke:false)
Room.create(number:212,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:213,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:215,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:216,floor:2,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:301,floor:3,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:302,floor:3,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:303,floor:3,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:305,floor:3,room_type:"ダブル",side:"車道側",smoke:false)
Room.create(number:306,floor:3,room_type:"ツイン",side:"車道側",smoke:false)
Room.create(number:307,floor:3,room_type:"ツイン",side:"車道側",smoke:false)
Room.create(number:308,floor:3,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:309,floor:3,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:310,floor:3,room_type:"ダブル",side:"車道側",smoke:false)
Room.create(number:312,floor:3,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:313,floor:3,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:315,floor:3,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:401,floor:4,room_type:"ダブル",side:"電車側",smoke:true)
Room.create(number:402,floor:4,room_type:"ダブル",side:"電車側",smoke:true)
Room.create(number:403,floor:4,room_type:"シングル",side:"電車側",smoke:true)
Room.create(number:405,floor:4,room_type:"ダブル",side:"車道側",smoke:false)
Room.create(number:406,floor:4,room_type:"ツイン",side:"車道側",smoke:false)
Room.create(number:407,floor:4,room_type:"ツイン",side:"車道側",smoke:false)
Room.create(number:408,floor:4,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:409,floor:4,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:410,floor:4,room_type:"ダブル",side:"車道側",smoke:false)
Room.create(number:412,floor:4,room_type:"シングル",side:"車道側",smoke:true)
Room.create(number:413,floor:4,room_type:"シングル",side:"車道側",smoke:true)
Room.create(number:415,floor:4,room_type:"シングル",side:"車道側",smoke:true)
Room.create(number:416,floor:4,room_type:"シングル",side:"車道側",smoke:true)
Room.create(number:501,floor:5,room_type:"ダブル",side:"電車側",smoke:false)
Room.create(number:502,floor:5,room_type:"シングル",side:"電車側",smoke:false)
Room.create(number:503,floor:5,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:505,floor:5,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:506,floor:5,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:507,floor:5,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:508,floor:5,room_type:"シングル",side:"車道側",smoke:true)
Room.create(number:512,floor:5,room_type:"シングル",side:"電車側",smoke:true)
Room.create(number:513,floor:5,room_type:"シングル",side:"電車側",smoke:true)
Room.create(number:515,floor:5,room_type:"シングル",side:"電車側",smoke:true)
Room.create(number:516,floor:5,room_type:"シングル",side:"電車側",smoke:true)
Room.create(number:601,floor:6,room_type:"ダブル",side:"電車側",smoke:false)
Room.create(number:603,floor:6,room_type:"ダブル",side:"電車側",smoke:false)
Room.create(number:605,floor:6,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:606,floor:6,room_type:"シングル",side:"車道側",smoke:false)
Room.create(number:612,floor:6,room_type:"ダブル",side:"電車側",smoke:true)
Room.create(number:613,floor:6,room_type:"ダブル",side:"電車側",smoke:true)
Room.create(number:615,floor:6,room_type:"ダブル",side:"電車側",smoke:true)
Room.create(number:616,floor:6,room_type:"シングル",side:"電車側",smoke:true)
20.times do |n|
  email = Faker::Internet.email
  company = Faker::Company.name
  first_name = Faker::Name.first_name
  first_name_kana = first_name
  last_name = Faker::Name.last_name
  last_name_kana = last_name
  tel = "080XXXXYYYY"
  placeholder = "sample"
  birthday = Faker::Date.between_except(from: '2014-09-23', to: '2015-09-25', excepted: '2015-01-24')
  Customer.create!(
               email: email,
               company: company,
               first_name: first_name,
               first_name_kana: first_name_kana,
               last_name: last_name,
               last_name_kana: last_name,
               tel: tel,
               placeholder: placeholder,
               birthday: birthday
               )
end






