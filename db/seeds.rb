puts 'Cleaning database...'
Restaurant.destroy_all

50.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: Restaurant::CUISINE.sample
  )
  puts "Restaurant #{restaurant.name} has been added"
end

puts 'finished'
