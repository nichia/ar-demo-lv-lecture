# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

s = Song.new(:name => "Thriller")
s.artist = Artist.new(:name => "MJ")
s.save # Will run 2 inserts

s = Song.new(:name => "Runaway")
s.build_artist(:name => "Kanye")
s.save # Will run 2 inserts

# Song.new is to build_association
# as
# Song.create is to create_association
