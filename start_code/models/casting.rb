require_relative("../db/sql_runner")
require_relative("./movie.rb")
require_relative("./star.rb")

class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id


  def initialize( options )
    @id = options['id'].to_i if options ['id']
    @movie_id = options['movie_id']
    @star_id = options['star_id']

  end



end
