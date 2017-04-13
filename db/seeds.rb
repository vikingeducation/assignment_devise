# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Begin seeding users..."
User.destroy_all

('a'..'z').each do |a|
  User.create(email: "#{a}@email.com", username: a, password: a * 6, password_confirmation: a * 6, first_name: a * 2, last_name: a * 2);
end

puts "Done."
