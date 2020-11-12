puts "Cleaning database..."
Restaurant.destroy_all
puts "Data base is completely clean"
puts ""

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
chonita = { name: "Tacos chidos", address: "384 Mi casa High St, Mex E1 6PQ", category: "japanese" }

[ dishoom, pizza_east, chonita ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
puts "Finished!"

# 15.times do 
#   restaurant = Restaurant.create(
#     name: Faker::Restaurant.name 
#     address: Faker::Address.street_name
#     phone_number: Faker::Number.number(digits: 10)
#   )
# end