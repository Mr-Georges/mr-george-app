# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
Area.destroy_all
Activity.destroy_all 
Category.destroy_all

AdminUser.create!(email: 'christophe.leray1@gmail.com', password: 'totoff09', password_confirmation: 'totoff09')

Area.create!(name: "Saint-Malo", status: 2)
Category.create!(name: "cultural", status: 2)
Category.create!(name: "family", status: 2)
Category.create!(name: "kids", status: 2)
Category.create!(name: "sea", status: 2)
Category.create!(name: "wellness", status: 2)
Category.create!(name: "ecotourism", status: 2)
Category.create!(name: "countryside", status: 2)
Category.create!(name: "rainy", status: 2)
Category.create!(name: "unusual", status: 2)

if Rails.env.development?
    Activity.create!(title: "Tour en kayak", status: 3, group: 0)
    Activity.create!(title: "Tour en bateau", status: 3, group: 0)
    Activity.create!(title: "Tour en poney", status: 3, group: 0)
    Activity.create!(title: "Degustation huitres", status: 1, group: 0)
    Activity.create!(title: "Tour des remparts",  status: 1, group: 0)
    Activity.create!(title: "Caino", status: 3, group: 0)
end 