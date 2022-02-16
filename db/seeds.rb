puts 'Cleaning the database...'
Restaurant.destroy_all
puts 'Database clean!'
puts 'Creating 5 new restaurants'
5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Restaurant::CATEGORIES.sample
  )
end

puts '5 new restaurants created!'
