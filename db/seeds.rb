# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# db/seeds.rb
User.create(name: 'Admin User', email: 'admin@example.com', password: 'password', role: 'admin')
User.create(name: 'Manager User', email: 'manager@example.com', password: 'password', role: 'manager')
User.create(name: 'Standard User', email: 'user@example.com', password: 'password', role: 'standard')

