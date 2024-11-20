# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Cleaning database...'
Restaurant.destroy_all

# 2. Create the instances 🏗️
restaurants = [
  {name: 'mcdconald', address: '123 rue st laurent', phone_number: '436667458', category: 'italian'},
  {name: 'A&W', address: '345 rue st denis', phone_number: '3844475564', category: 'italian'},
  {name: 'Belle province', address: '495 rue villeneuve', phone_number: '4557830048', category: 'japanese'},
  {name: 'frites alors', address: '4985 rue belanger', phone_number: '5768894756', category: 'belgian'},
  {name: 'Azalea', address: '475 rue de la roche', phone_number: '5768894756', category: 'french'}
]

restaurants.each do |restaurant|
  Restaurant.create!(restaurant)
end

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
