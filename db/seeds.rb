# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(name: "John", email: "2@gmail.com", password: "test", points: 100)
User.create(name: "Jenny", email: "1@gmail.com", password: "test", points: 500)
User.create(name: "Amy", email: "3@gmail.com", password: "test", points: 10)
Tag.create(name: "Boston", description: "Boston is a great city")
Tag.create(name: "New York", description: "New York is a great city")
Tag.create(name: "San Francisco", description: "San Francisco is a great city")
Post.create(title: "First Post about Boston", body: "This is my first post", user_id: 1, tag_id: 1, points2view: 50)
Post.create(title: "Second Post about New York", body: "This is my second post", user_id: 2, tag_id: 2, points2view: 50)
Post.create(title: "Third Post about New York", body: "This is my second post", user_id: 2, tag_id: 2, points2view: 0)
Post.create(title: "Fourth Post about New York", body: "This is my second post", user_id: 3, tag_id: 2, points2view: 0)
Comment.create(body: "This is my first comment", user_id: 2, post_id: 1)
Comment.create(body: "This is my second comment", user_id: 1, post_id: 2)