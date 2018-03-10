# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prof.populate

profs = Prof.order(:created_at).take(6)


30.times do
    content = Faker::Lorem.sentence(200)
    email = Faker::Internet.email
    name = Faker::Name.name
    profs.each { |prof|
      ip = Faker::Internet.ip_v4_address
      prof.reviews.create!(content: content,email: email, name: name,ip: ip,
                           like: [true, false].sample)
      }



end
