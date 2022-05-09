require 'faker'

Article.destroy_all

10.times do
  Article.create(title: "Chuck Norris", content: Faker::ChuckNorris.fact)
end

20.times do
  Article.create(title: Faker::Name.name, content: Faker::Hipster.sentence)
end

puts "You just seeded #{Article.count} articles."
