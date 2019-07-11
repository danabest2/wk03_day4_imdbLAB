class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id


  def initialize( options )
    @id = options['id'].to_i if options ['id']
    @first_name = options['first_name']
    @last_name = options['last_name']





end
