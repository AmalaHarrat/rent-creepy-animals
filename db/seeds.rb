# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Animal.destroy_all

puts "USERS CREATION"
amala = User.create(email: "amala@test.fr", password: "qwerty", name: "Amala", address: "Bordeaux")
saliha = User.create(email: "saliha@test.fr", password: "qwerty", name: "Saliha", address: "Agen")
puts "ANIMALS CREATION"
Animal.create(user: amala,name: "Roar-Some", category: "Lions", description: "The king of Jungle will make your friends jump to the ceiling!", fear: 8, price: 600)
Animal.create(user: saliha,name: "Snake", category: "Snakes", description: "Make you Mother in law have a heart attack with this sneaky snake...", fear: 9, price: 150)
Animal.create(user: amala,name: "Bubblegum", category: "Unicorns", description: "Want to impress you you little girl and shut up yopur ex-wife mouth, choose our favorite unicorn", fear: 1, price: 820)
Animal.create(user: saliha,name: "Catfish", category: "Mixed", description: "Don't know what to choose between a cat and a fish ?! Choose both !", fear: 3, price: 360)
Animal.create(user: amala,name: "Ill-Eagle", category: "Eagles", description: "Fed up of your neighbour's cat peeing in your garden ! Take our eagle to make it disapear... maybe forever ...", fear: 7, price: 620)
Animal.create(user: saliha,name: "PanDAD", category: "Panda", description: "Need a big hug ?Let ouur PanDad make you a big fluffy hug ... haaannn so cuuttee ...", fear: 6, price: 750)
Animal.create(user: amala,name: "King-Kong", category: "Gorilla", description: "Want to impress your friends with the king, the best celebrity animal ever ? You're on the right place !", fear: 10, price: 420)

puts "finish"
