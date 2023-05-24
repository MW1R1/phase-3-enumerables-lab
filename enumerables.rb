require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  names = []
  spicy_foods.each do |food|
    names << food[:name]
  end
  names
end

# Example usage:
spicy_foods_array = [
  { name: "Green Curry", spice_level: "Medium" },
  { name: "Buffalo Wings", spice_level: "Hot" },
  { name: "Mapo Tofu", spice_level: "Spicy" }
]

puts get_names(spicy_foods_array)
# Output: ["Green Curry", "Buffalo Wings", "Mapo Tofu"]

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spiciest = []
  spicy_foods.each do |food|
    if food[:heat_level] > 5
      spiciest << food
    end
  end
  spiciest
end

# Example usage:
spicy_foods_array = [
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 4 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
]

puts spiciest_foods(spicy_foods_array)
# Output: [{ name: 'Green Curry', cuisine: 'Thai', heat_level: 9 }, { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }]

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level_emoji = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level_emoji}"
  end
end

# Example usage:
spicy_foods_array = [
  { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
  { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
  { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
]

print_spicy_foods(spicy_foods_array)
# Output:
# Green Curry (Thai) | Heat Level: 🌶🌶🌶🌶🌶🌶🌶🌶🌶
