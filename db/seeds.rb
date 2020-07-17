5.times do 
    user = User.create(fname: Faker::FunnyName, lname: Faker::FunnyName, email: Faker::Internet.email, password: Faker::FunnyName)
    5.times do
        user.playlist.create(title: Faker::FunnyName, desription: Faker::Lorem.paragrapgh)
    end
end
