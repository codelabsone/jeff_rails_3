# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Department.create!([
  {
    name: 'Sales',
    description: "Meet the sales staff."
  },
  {
    name: 'Finance',
    description: "Calculate your loan payments."
  },
  {
    name: 'Inventory',
    description: "See our car inventory."
  }
  ])

Sale.create!([
  {
    name: "Dustin LeGrand",
    email: 'dustin.legrand@jeffscars.com',
    phone: "573-579-1234"
  }
  ])
