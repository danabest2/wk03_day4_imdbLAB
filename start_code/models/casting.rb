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

  def save()
    sql = "INSERT INTO castings (movie_id, star_id)
    VALUES ($1, $2)
    RETURNING id"
    values = [@movie_id, @star_id]
    casting = SqlRunner.run(sql, values).first
    @id = casting['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM castings"
    castings = SqlRunner.run(sql)
    result = castings.map{ |cast|  Casting.new(cast) }
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM castings"
    values = []
    SqlRunner.run(sql, values)
  end


end
