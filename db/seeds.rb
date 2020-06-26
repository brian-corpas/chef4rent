# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Chef.destroy_all
Category.destroy_all


categories = [
'American',
'Argentine',
'Brazilian',
'Cajun',
'Cantonese',
'Caribbean',
'Chinese',
'English',
'French',
'Filipino',
'German',
'Greek',
'Indian',
'Indonesian',
'Irish',
'Italian',
'Japanese',
'Korean',
'Lebanese',
'Malaysian',
'Mediterranean',
'Mexican',
'Peruvian',
'Portuguese',
'Spanish',
'Sri Lankan',
'Taiwanese',
'Thai',
'Turkish',
'Vietnamese']


categories.each do |category|
  Category.create(name: category)
end


500.times do
  Chef.create(
    name: Faker::FunnyName.two_word_name,
    description: Faker::Restaurant.description,
    price_range: ["$", "$$", "$$$", "$$$$"].sample,
    location: Faker::Address.city,
    category_id: Category.find_by(name: categories.sample).id
  )
end
