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

u1 = User.create!( {
                first_name: "John",
                last_name: "West",
                email: "JW@bitmaker.com",
                password: "password",
                password_confirmation: "password"
               } )

u2 = User.create!( {
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
                 end_date: "August 20 2015",
                 category: "Animal Rights",
                 user_id: u1.id
                } )

p2 = Project.create!( {name: "Save the Dogs",
                 description: "A project to save the doggies.",
                 funding_goal: 10000,
                 start_date: "July 20 2015",
                 end_date: "December 20 2015",
                 category: "Animal Rights",
                 user_id: u1.id
                } )

p3 = Project.create!( {name: "Save the Potatoes",
                 description: "A project to save the potatoes.",
                 funding_goal: 50000,
                 start_date: "March 20 2015",
                 end_date: "July 20 2016",
                 category: "Veggie Rights",
                 user_id: u2.id
                } )

p4 = Project.create!( {name: "Save the Carrots",
                 description: "A project to save the carrots.",
                 funding_goal: 100000,
                 start_date: "July 20 2015",
                 end_date: "July 20 2015",
                 category: "Veggie Rights",
                 user_id: u2.id
                } )

r1 = Reward.create!( {
                name: "Catnip thing",
                description: "Smells like catnip",
                amount: 3,
                availability: true,
                project_id: p1.id
        })

r2 = Reward.create!( {
                name: "Dognip thing",
                description: "Smells like dognip",
                amount: 3,
                availability: true,
                project_id: p2.id
        })

r3 = Reward.create!( {
                name: "Potato thing",
                description: "Smells like potato",
                amount: 3,
                availability: true,
                project_id: p3.id
        })

r4 = Reward.create!( {
                name: "Carrot thing",
                description: "Smells like carrots",
                amount: 3,
                availability: true,
                project_id: p4.id
        })

Pledge.create!( {
                reward_id: r1.id,
                user_id: u1.id
        })

Pledge.create!( {
                reward_id: r2.id,
                user_id: u1.id
        })

Pledge.create!( {
                reward_id: r3.id,
                user_id: u1.id
        })

Pledge.create!( {
                reward_id: r4.id,
                user_id: u2.id
        })