require 'faker'

User.destroy_all
10.times do
    User.create!(
    first_name: FAKER::Name.first_name, 
    last_name: FAKER::Name.last_name, 
    description: Faker::Quote.matz, 
    email: Faker::Internet.email, 
    age: rand(14..34),
    city: City.find(rand(City.first.id..City.last.id)))
end

City.destroy_all
10.times do
    City.create!(
    name: FAKER::Adress.city, 
    zip_code: Faker::Address.zip_code)
end

Gossip.destroy_all
20.times do
    Gossip.create!(
    title: FAKER::Quote.singular_siegler,
    content: FAKER::Quote.matz,
    user: User.find(rand(User.first.id..User.last.id)))
end

Chaque gossip aura (au minimum) un tag
Tag.destroy_all
10.times do
    Tag.create!(
    title: FAKER::Quote.singular_siegler
    )