# Remove all restaurants from the db
Restaurant.destroy_all
puts "Cleared the database"

# Add some seeds:
restaurants = [
  {
    name: "Pizza Hut",
    address: "155 King Street",
    phone_number: "01234 567 890",
    category: "italian"
  },
  {
    name: "Le chicken",
    address: "144 Pembridge row",
    phone_number: "01234 018 890",
    category: "belgian"
  },
  {
    name: "Le monde",
    address: "144 Queens Road",
    phone_number: "03716 567 890",
    category: "french"
  },
  {
    name: "Mosu",
    address: "145 St Georges",
    phone_number: "08984 567 890",
    category: "japanese"
  },
  {
    name: "Gosha's place",
    address: "123 King Street",
    phone_number: "01434 367 890",
    category: "chinese"
  }
]

# Enter the restaurants in the db
Restaurant.create(restaurants)
puts "Added restaurants"
