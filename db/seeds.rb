# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hugo = User.create(name: "Hugo Rodriguez",email: "hugo@rodriguez",password:"test1234",type_of: :remote)

User.create(name: "Marta Quiroga",email: "marta@quiroga.com",password:"test1234",type_of: :remote,manager: hugo)
User.create(name: "Martin Alvarez",email: "martin@alvarez.com",password:"test1234",type_of: :remote,manager: hugo)

pablo = User.create(name: "Pablo Rodriguez",email: "pablo@rodriguez.com",password:"test1234",type_of: :remote)
User.create(name: "Fran Perez",email: "fran@perez.com",password:"test1234",type_of: :remote,manager: pablo)
User.create(name: "Enzo Ruiz",email: "enzo@ruiz.com",password:"test1234",type_of: :remote)