# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.destroy_all()

Reward.destroy_all()

User.destroy_all()

Pledge.destroy_all()

u1 = User.create!(    {
                first_name: "John",
                last_name: "West",
                email: "JW@bitmaker.com",
                password: "password",
                password_confirmation: "password"
               } )

u2 = User.create!(    {
                first_name: "Bono",
                last_name: "West III",
                email: "bo@no.com",
                password: "password",
                password_confirmation: "password"
               } )

p1 = Project.create!( {name: "Save the Cats",
                 description: "A project to save the kitties.",
                 funding_goal: 10000,
                 start_date: "July 20 2015",
                 end_date: "July 20 2015",
                 category: "Animal Rights",
                 user_id: u2.id
                } )

Project.create!( {name: "Save the Dogs",
                 description: "A project to save the doggies.",
                 funding_goal: 10000,
                 start_date: "July 20 2015",
                 end_date: "July 20 2015",
                 category: "Animal Rights",
                 user_id: u2.id
                } )

r1 = Reward.create!( {
                name: "Catnip thing",
                description: "Smells like catnip",
                amount: 3,
                availability: true,
                project_id: p1.id
        })

Pledge.create!( {
                reward_id: r1.id,
                user_id: u1.id
        })