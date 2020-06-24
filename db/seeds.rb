# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Chef.destroy_all
Category.destroy_all


categories = [
'American',
'Argentine',
'Arab',
'Armenian',
'Brazilian',
'Cajun',
'Cantonese',
'Caribbean',
'Chinese',
'Cypriot',
'Danish',
'English',
'Estonian',
'French',
'Filipino',
'German',
'Goan',
'Greek',
'Indian',
'Indonesian',
'Irish',
'Italian',
'Jamaican',
'Japanese',
'Korean',
'Kurdish',
'Lebanese',
'Lithuanian',
'Malaysian',
'Mediterranean',
'Mexican',
'Nepalese',
'Polish',
'Persian',
'Peruvian',
'Portuguese',
'Romanian',
'Russian',
'Serbian',
'Slovenian',
'Somali',
'Soviet',
'Spanish',
'Sri Lankan',
'Taiwanese',
'Thai',
'Turkish',
'Ukrainian',
'Vietnamese']

categories.each do |category|
  Category.create(name: category)
end

100.times do
  Chef.create(
    name: Faker::FunnyName.two_word_name,
    description: Faker::Restaurant.description,
    price_range: ["$", "$$", "$$$", "$$$$"].sample,
    location: Faker::Address.city,
    category_id: Category.find_by(name: categories.sample).id
  )
end
