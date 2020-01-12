# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'christophe.leray1@gmail.com', password: 'totoff09', password_confirmation: 'totoff09')

Area.create!(name: "Saint-Malo", status: 3)
Area.create!(name: "Paris", status: 3)
Area.create!(name: "Vannes", status: 1)
Area.create!(name: "Lorient", status: 0)

if Rails.env.development?
    Activity.create!(title: "Tour en kayak", status: 3, category: 0)
    Activity.create!(title: "Tour en bateau", status: 3, category: 0)
    Activity.create!(title: "Tour en poney", status: 3, category: 3)
    Activity.create!(title: "Degustation huitres", status: 1, category: 1)
    Activity.create!(title: "Tour des remparts",  status: 1, category: 0)
    Activity.create!(title: "Caino", status: 3, category: 1)
end 