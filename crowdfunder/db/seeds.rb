# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all()

Project.create( {name: "Save the Cats",
                 description: "A project to save the kitties.",
                 funding_goal: 10000,
                 start_date: "July 20 2015",
                 end_date: "July 20 2015",
                 category: "Animal Rights"
                } )

Project.create( {name: "Save the Dogs",
                 description: "A project to save the doggies.",
                 funding_goal: 10000,
                 start_date: "July 20 2015",
                 end_date: "July 20 2015",
                 category: "Animal Rights"
                } )