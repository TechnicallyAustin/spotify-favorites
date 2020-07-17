5.times do 
    user = User.create(fname: Faker::Name.name, lname: Faker::FunnyName.name, email: Faker::Internet.email, password: Faker::FunnyName.name)
    5.times do
        user.playlists.create(title: Faker::FunnyName.name, description: Faker::Lorem.paragraph)
    end
end
