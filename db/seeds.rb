require 'faker'

User.destroy_all
10.times do
    User.create!(first_name:FAKER::Name.first_name, 
    last_name:FAKER::Name.last_name, 
    description:Faker::Quote.matz, 
    email:Faker::Internet.email, 
    age:rand(14..34),
    city:City.find(rand(City.first.id..City.last.id)))
end

Tu vas faire 10 villes en base avec Faker et les lier avec les utilisateurs du seed.
City.destroy_all
10.times do
    City.create!(name:FAKER::Adress.city, 
    zip_code: Faker::Address.zip_code)
end