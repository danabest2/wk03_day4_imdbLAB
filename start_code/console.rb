require_relative('models/movie.rb')
require_relative('models/star.rb')
require_relative('models/casting.rb')

require ( 'pry-byebug' )

Casting.delete_all()
Star.delete_all()
Movie.delete_all()


star1 = Star.new({ 'first_name' => 'Tom', 'last_name' => 'Hanks'})
star1.save()

star2 = Star.new({ 'first_name' => 'Robert', 'last_name' => 'De Niro'})
star2.save()

movie1 = Movie.new({'title' => 'Castaway', 'genre' => 'Adventure'})
movie1.save()

movie2 = Movie.new({'title' => 'Godfather', 'genre' => 'Thriller'})
movie2.save()

casting1 = Casting.new({'movie_id' => movie1.id, 'star_id' => star1.id})
casting1.save()

casting2 = Casting.new({'movie_id' => movie2.id, 'star_id' => star2.id})
casting2.save()




binding.pry
nil
