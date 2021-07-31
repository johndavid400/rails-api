# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

course = Course.find_or_create_by(title: 'Test', description: 'Test 123')

['step 1', 'step 2', 'step 3'].each do |s|
  course.sections.find_or_create_by(title: s.titleize, subtitle: s, content: "Doing #{s}")
end

User.create(email: 'test@test.com', password: 'password', password_confirmation: 'password') unless User.exists?(email: 'test@test.com')

