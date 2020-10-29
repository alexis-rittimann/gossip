# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

p " *********** "
p " Begin seed "
p " *********** "

p "Destroy curent data..."

p "Destroying City... #{City.count} "
City.destroy_all
p "Destroying JoinTag... #{JoinTagsGossip.count} "
JoinTagsGossip.destroy_all
#p "Destroying JoinPm... #{JoinPm.count} "
#JoinPm.destroy_all
p "Destroying Tag... #{Tag.count} "
Tag.destroy_all
p "Destroying PrivateMessage... #{PrivateMessage.count} "
PrivateMessage.destroy_all
p "Destroying User... #{User.count} "
User.destroy_all
p "Destroying Potin... #{Gossip.count} "
Gossip.destroy_all
p "-----------------------"




10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
    )
end
p "Creation City... #{City.count} "
puts "DONE"
p "-----------------------"



10.times do
  Tag.create!(
    title: Faker::DcComics.hero,
    )
end
p "Creation Tags... #{Tag.count} "
puts "DONE"
p "-----------------------"



10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: Faker::Number.between(from: 7, to: 77),
    city_id: City.all.sample.id,
    password_digest: "aarrt"
    )
end
p "Creation Users... #{User.count} "
puts "DONE"
p "-----------------------"



20.times do
  Gossip.create!(
    title: Faker::Lorem.sentence,
    content: Faker::ChuckNorris.fact,
    user_id: User.all.sample.id
    )
end
p "Creation Potins... #{Gossip.count} "
puts "DONE"
p "-----------------------"



20.times do
  JoinTagsGossip.create!(
    gossip_id: Gossip.all.sample.id,
    tag_id: Tag.all.sample.id
    )
end
p "Creation Jointag.. #{JoinTagsGossip.count} "
puts "DONE"
p "-----------------------"



10.times do
  PrivateMessage.create!(
    content: Faker::Lorem.paragraph,
    sender_id: User.all.sample.id
    )
end
p "Creation PrivateMessage... #{PrivateMessage.count} "
puts "DONE"
p "-----------------------"



#10.times do
#  JoinPm.create!(
#    user_id: User.all.sample.id,
#    private_message_id: PrivateMessage.all.sample.id
#    )
#p "Creation JoinPm.. #{JoinPm.count} "
#puts "DONE"
#p "-----------------------"



p " *********** "
p " END of seed "
p " *********** "
