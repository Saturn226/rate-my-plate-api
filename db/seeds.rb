# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create({username: 'Saturn226', first_name: 'Ashley', last_name: 'Muller', password: 'password'})

Plate.create({name: 'General Tso\'s Chicken', description: 'Ashley\'s favorite chinese dish',
user_id: User.first.id})

Plate.create({name: 'Spaghetti and Meatballs', description: 'A Classic Italian dish',
    user_id: User.first.id})

Plate.create({name: 'Steak and Eggs', description: 'A simple dinner',
    user_id: 2})