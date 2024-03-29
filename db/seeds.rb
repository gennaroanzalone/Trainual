# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# use Faker to create seeded dats
1000.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.safe_email,
    title: Faker::Job.title,
    phone: Faker::PhoneNumber.subscriber_number(length: 9),
    status: Faker::Boolean.boolean
  )
end