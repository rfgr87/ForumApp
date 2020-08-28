# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


subject1 = Subject.create(theme: "Jevas");
subject2 = Subject.create(theme: "Pendejases")

comment1 = Comment.create(info: "Information of jevas", subject: subject1)
comment2 = Comment.create(info: "Informacion de pendejases", subject: subject2)

