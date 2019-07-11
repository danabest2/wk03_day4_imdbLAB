require_relative("../sql_runner")

class Movie

  attr_reader :id
  attr_accessor :title, :genre



  def initialize
    @id = options['id'].to_i if options ['id']
    @title = options['title']
    @genre = options['genre']

  end



end
