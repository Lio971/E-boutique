require 'faker'

User.destroy_all
10.times do
    User.create!(first_name:FAKER::Name.first_name, 
    last_name:FAKER::Name.last_name, 
    description:Faker::Quote.matz, 
    email:Faker::Internet.email, 
    age:rand(14..34))
end