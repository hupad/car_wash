# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


vehicle_types = VehicleType.create([{name: "Car", cost: 5}, {name: "Truck", cost: 10}])
options = Option.create([ {name: "Truck has mud in the bed", cost: 2}, {name: "Truck has bed let down.", cost: 0 } ])