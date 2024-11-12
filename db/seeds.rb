puts "Cleaning the DB..."
Pet.destroy_all

puts "creating pets..."
30.times do
  Pet.create!(
    name: Faker::FunnyName.name,
    species: Pet::SPECIES.sample,
    location: Faker::Address.street_address,
    found_on: Date.today - rand(1..10)
  )
end
puts "... created #{Pet.count} pets"
