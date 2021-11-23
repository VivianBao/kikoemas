# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'open-uri'
require 'json'

puts puts 'Cleaning up database...'
School.destroy_all
User.destroy_all
Councelor.destroy_all
Booking.destroy_all
Message.destroy_all

puts 'Database cleaned'
puts 'Creating School......'

school1 = School.create!(
  name: "Le Wagon High School"
)

puts 'School created!'
puts 'Creating Users....'

user1 = User.create!(
  first_name: "Ryota",
  last_name: 'Enoki',
  email: "ryota@lewagon.jp",
  phone_number: "080 45454646",
  address: "212-1086, Kinutakoen, Setagaya-ku, Tokyo",
  password: '123456',
  school_id: school1
)

user2 = User.create!(
  first_name: "Karen",
  last_name: 'Fujibayashi',
  email: 'karen@lewagon.jp',
  phone_number: '080 12344321',
  address: '387-1223, Ichigayakoracho, Shinjuku-ku, Tokyo',
  password: '123456',
  school_id: school1
)

user3 = User.create!(
  first_name: "Vivian Bao",
  last_name: 'Bao',
  email: 'vivian@lewagon.jp',
  phone_number: '080 44448888',
  address: '181-1206, Roppongi Roppongihiruzumoritawa(9-kai), Minato-ku, Tokyo',
  password: '123456',
  school_id: school1
)

user4 = User.create!(
  first_name: "Caio",
  last_name: 'Santos',
  email: 'caio@lewagon.jp',
  phone_number: '080 99991111',
  address: '57-14, Mejiro 2-chome, Toshima-ku, Tokyo',
  password: '123456',
  school_id: school1
)

puts 'Users created'
puts 'Creating Councelors........'

councelor1 = Councelor.create!(
  first_name: "Doug",
  last_name: 'Berkley',
  email: 'doug@lewagon.jp',
  password: '123456',
  school_id: school1
)

councelor2 = Councelor.create!(
  first_name: "Trouni",
  last_name: 'Tiet',
  email: 'trouni@lewagon.jp',
  password: '123456',
  school_id: school1
)

puts 'Councelors created'
puts 'Creating Bookings.........'

booking1 = Booking.create!(
  date: 'Mon, 22 Nov 2021 16:12:33 +0900',
  mode: '1',
  user_id: user1,
  conselor_id: councelor1,
  note: 'That was a good conversation. He was with some trouble with his girlfriend, but now is everything ok.',
  rating: '5',
  in_session: false
)



booking2 = Booking.create!(
  date: 'Mon, 22 Nov 2021 10:00:00 +0900',
  mode: '2',
  user_id: user2,
  conselor_id: councelor1,
  note: "She wasn't feeling confident because her friends weren't talking with her, I talked with her and now she is feeling better and She said, she would like to keep talking with some councelor",
  rating: '4',
  in_session: false
)

booking3 = Booking.create!(
  date: 'Tue, 23 Nov 2021 11:00:00 +0900',
  mode: '1',
  user_id: user3,
  conselor_id: councelor2,
  note: "It was a really great conversation. She had some issue about her cat passed away. After the talk, it seems fine.",
  rating: '5',
  in_session: false
)

puts 'All Booking created'


#test for messageable

# booking = Booking.create
# counselor = Counselor.create(fist_name: "Ryota")
# user = User.create(first_name: "Joss")
# byebug
# puts 'seeded'

