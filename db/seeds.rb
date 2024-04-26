# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Post.delete_all
User.delete_all
Tag.delete_all

#CREANDO LOS USUARIOS

user1 = User.create!(
  name: "John Doe",
  email: "johndoe@example.com",
  password: "123456"
)

user2 = User.create!(
  name: "Joaquin Carvajal",
  email: "jcarvajal@miuandes.cl",
  password: "password1"
)
user3 = User.create!(
  name: "Sergio Quijada",
  email: "squijada@uandes.cl",
  password: "password1"
)

user4 = User.create!(
  name: "Daniel García",
  email: "imontegu@miuandes.cl",
  password: "password1"
)

user5 = User.create!(
  name: "Juan Pablo Oyarzun",
  email: "jpoyarzun@uandes.cl",
  password: "password1"
)

#CREANDO LOS POSTS

post1 = Post.create!(
  title: "Post 1",
  content: "This is the first post I've ever made on Y",
  user: user1,  
  published_at: Time.current  
)

post2 = Post.create!(
  title: "Example post",
  content: "This is a tutorial post for any new teachers here at Y",
  user: user2,
  published_at: Time.current
)

post3 = Post.create!(
  title: "Holiday Vacations!",
  content: "Here are some of the places I visited during the winter holidays",
  user: user1,  
  published_at: Time.current  
)

post4 = Post.create!(
  title: "New proyect schedule",
  content: "This is the new schedule to follow on the software development proyect, hope you like it",
  user: user4,  
  published_at: Time.current  
)

post5 = Post.create!(
  title: "F1",
  content: "Some videos I made during my visit to the Redbull Headquarters",
  user: user1,  
  published_at: Time.current  
)

post6 = Post.create!(
  title: "Uandes garduations",
  content: "Such a great time alongside other teachers at the 2024 engineer graduations",
  user: user2,  
  published_at: Time.current  
)

post7 = Post.create!(
  title: "New Album",
  content: "Everyone please check out my sons new album, he is so talented",
  user: user4,  
  published_at: Time.current  
)

post8 = Post.create!(
  title: "FAQS",
  content: "I'm creating a FAQ questions for my students so they can contcat me faster",
  user: user3,  
  published_at: Time.current  
)

post9 = Post.create!(
  title: "My first Y post",
  content: "Im new to Y, does anyone know how this all works?",
  user: user5,  
  published_at: Time.current  
)

post10 = Post.create!(
  title: "Birthday celebration",
  content: "Thank you very much for my birthday celebration, I had so much fun",
  user: user5,  
  published_at: Time.current  
)

tag1 = Tag.create!(name: "Tag 1")
tag2 = Tag.create!(name: "Uandes")
tag3 = Tag.create!(name: "Y")
tag4 = Tag.create!(name: "Fun")
tag5 = Tag.create!(name: "F1")

post3.tags << tag1
post1.tags << tag1
post1.tags << tag4
post2.tags << tag3
post5.tags << tag3
post5.tags << tag5
post1.tags << tag2
post10.tags << tag1
post7.tags << tag1
post7.tags << tag3
