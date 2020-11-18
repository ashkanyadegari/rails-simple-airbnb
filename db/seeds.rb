# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  if Rails.env.development?

  puts "Destroying all the seeds"
  puts "Starting seed"
  Flat.destroy_all
  100.times do
    flat = Flat.create(name: Faker::Artist.name , address: Faker::Address.street_address , description: Faker::Hipster.sentence,
      price_per_night: rand(50..295), number_of_guests: rand(1..6)
 )
  flat.save
  puts "#{flat.name}"
    end
  puts "Seeding done!"
end
