# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Elements

40.times do
  Element.create(name: Faker::Hipster.word, interpretation: Faker::Hipster.sentence)
end

andrew = User.create(name: "Andrew", username: "ajklein", password: "baseball", date_of_birth: Date.new(1991, 6, 15), gender: "male", favorite_animal: Faker::Pokemon.name)

daniella= User.create(name: "Daniella", username: "dpenn", password: "puppy", date_of_birth: Date.new(1993, 4, 21), gender: "female", favorite_animal: "Giraffe")


for i in 0..4 do
  andrew.dreams.create(title: Faker::Hipster.word, description: Faker::Hipster.sentence, date: Faker::Date.between(1.year.ago, Date.today))
  andrew.dreams[i].element_ids = (1..40).to_a.sample(3)
end

for i in 0..4 do
  daniella.dreams.create(title: Faker::Hipster.word, description: Faker::Hipster.sentence, date: Faker::Date.between(1.year.ago, Date.today))
  daniella.dreams[i].element_ids = (1..40).to_a.sample(3)
end
#
#
#
# andrew.dreams.create(title: "The Clown")
# andrew.dreams.create(title: "The Monkey")
# andrew.dreams.first.element_ids = [1, 2, 3]
#
# andrew.dreams[1].element_ids = [4,5]
# andrew.dreams[2].element_ids = [6,7,8,9]
#
# # andrew.dreams[0].save
# # andrew.dreams[1].save
# # andrew.dreams[2].save
#
#
# daniella.dreams.create(title: "Devil's Playground", description: Faker::Hipster.sentence)
# daniella.dreams.create(title: "The Morgue")
# daniella.dreams.create(title: "Happy Times")
#
# daniella.dreams.first.element_ids = [10,11,12]
# daniella.dreams[1].element_ids = [13, 14]
# daniella.dreams[2].element_ids = [15, 16, 17, 18]
#
# daniella.gender = "female"
# andrew.gender = "male"
#
# andrew.date_of_birth = Date.new(1991, 6, 15)
# daniella.date_of_birth = Date.new(1993, 4, 21)

andrew.save
daniella.save
