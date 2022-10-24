# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning up database"
Movie.destroy_all
puts "Cleaned up"

20.times do
  puts "Adding a movie"
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: 'https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg',
    rating: [1, 2, 3, 4, 5].sample
  )
  movie.save!
  puts "Movie #{movie.title} created"
end
puts "#{Movie.count} created"
