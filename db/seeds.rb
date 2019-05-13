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

reviews = [
  {
    content: "Really fun for the kids",
    rating: "3"
  },
  {
    content: "Great stuff!",
    rating: "4"
  },
  {
    content: "I love this place so much",
    rating: "5"
  },
  {
    content: "Pretty poor experience",
    rating: "2"
  }
]

# Enter the restaurants in the db
Restaurant.create(restaurants)
puts "Added restaurants"

# Add reviews in to the restaurants
Restaurant.all.each do |restaurant|
  restaurant.reviews = Review.create(reviews)
  restaurant.save
end
puts "Added reviews"
