require 'pg'

class Rating

  def self.all
    connection = PG.connect(dbname: 'ft_ratings')
    result = connection.exec("SELECT * FROM ratings")
    result.map { |rating| rating['score'].to_i }
  end

  # def self.create(3)
  #   connection = PG.connect(dbname: 'ft_ratings')
  #   result = connection.exec("INSERT INTO ratings (rating) VALUES(#{score})")
  # end

end
