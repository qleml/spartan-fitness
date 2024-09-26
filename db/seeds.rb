# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Create users
user1 = User.create(username: 'ccc')
user2 = User.create(username: 'meberlein')


# Create exercise categories
push_category = ExerciseCategory.create(title: 'Push')
pull_category = ExerciseCategory.create(title: 'Pull')
core_category = ExerciseCategory.create(title: 'Core')
endurance_category = ExerciseCategory.create(title: 'Endurance')

# Create exercises
Exercise.create(name: 'Push Up', exercise_category: push_category)
Exercise.create(name: 'Pull Up', exercise_category: pull_category)
Exercise.create(name: 'Handstand', exercise_category: push_category)
