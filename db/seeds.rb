puts "planting seeds 🌱..."

puts "humans: 🧍..."

Human.create(
    name: "Dean Bradley",
	city: "Stamford",
	date_of_birth: "04/09/96",
	favorite_color: "#e0b67b",
    favorite_food: "Fried Rice",
)
puts "...🧍..."
Human.create(
    name: "Brynn Dunlap",
    city: "Kansas City",
    date_of_birth: "08/26/62",
    favorite_color: "#b5f0ff",
    favorite_food: "Popcorn",
)
puts "...🧍..."
Human.create(
    name: "Ashton Reynolds",
    city: "Honolulu",
    date_of_birth: "11/01/96",
    favorite_color: "#aefcb3",
    favorite_food: "Ice Cream",
)
puts "...🧍..."
Human.create(
    name: "Rahim Donaldson",
    city: "Warren",
    date_of_birth: "12/28/73",
    favorite_color: "#fce6a6",
    favorite_food: "Sweet Potato",
)
puts "...🧍..."
Human.create(
    name: "Aurora Marks",
    city: "Davenport",
    date_of_birth: "02/05/92",
    favorite_color: "#8ff7b9",
    favorite_food: "Empanadas",
)

puts "dogs: 🐕..."
Dog.create(
    name: "Marshmallow",
    favorite_toy: "Mr. Bee",
    date_of_birth: "02/05/2020",
    human_id: 1,
    favorite_food: "Banana",
)
puts "...🐕..."
Dog.create(
    name: "Porkchop",
    favorite_toy: "Socks",
    date_of_birth: "03/11/2019",
    human_id: 2,
    favorite_food: "Apple",
)
puts "...🐕..."
Dog.create(
    name: "Waffles",
    favorite_toy: "Rope",
    date_of_birth: "07/04/2016",
    human_id: 3,
    favorite_food: "Peanut Butter",
)
Dog.create(
    name: "Fluffy",
    favorite_toy: "Bone",
    date_of_birth: "11/20/2017",
    human_id: 4
)
puts "...🐕..."
Dog.create(
    name: "Biscuit",
    favorite_toy: "Plushy",
    date_of_birth: "06/15/2018",
    human_id: 5,
    favorite_food: "Jerky",
)