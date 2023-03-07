puts "🌱 Seeding data..."

require 'faker'

# Create 10 users in Kenya
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    location: 'Kenya'
  )
end

# Create 50 grass raw materials, each belonging to a random user in Kenya
require 'open-uri'

50.times do
  image_url = URI.open("https://source.unsplash.com/400x400/?grass")
  RawMaterial.create!(
    name: 'grass',
    image_url: image_url,
    user: User.order("RANDOM()").first,
    temperature: "#{Faker::Number.between(from: 20, to: 40)}°C",
    description: "This is a type of grass that grows in various regions.",
    maturity_period: "#{Faker::Number.between(from: 1, to: 12)} months",
    environmental_conditions: "Requires plenty of rainfall and sunshine."
  )
end


# Create 100 feedbacks, each belonging to a random user and raw material
100.times do
  Feedback.create!(
    comment: Faker::Lorem.sentence(word_count: 10),
    user: User.order("RANDOM()").first,
    raw_material: RawMaterial.order("RANDOM()").first
  )
end


puts "✅ Done seeding!"
