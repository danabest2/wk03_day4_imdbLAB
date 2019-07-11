require_relative('models/movie.rb')
require_relative('models/star.rb')
require_relative('models/casting.rb')

require ( 'pry-byebug' )

star1 = Star.new({ 'first_name' => 'Tom', 'last_name' => 'Hanks'})
star1.save()


star2 = Star.new({ 'first_name' => 'Robert', 'last_name' => 'De Niro'})
star2.save()








binding.pry
nil
