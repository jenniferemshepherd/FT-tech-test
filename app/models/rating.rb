require 'pg'

class Rating

  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'ft_ratings_test')
    else
      connection = PG.connect(dbname: 'ft_ratings')
    end

    result = connection.exec("SELECT * FROM ratings")
    result.map { |rating| rating['score'].to_i }
  end

  def self.create(score)
    connection = PG.connect(dbname: 'ft_ratings_test')
    result = connection.exec("INSERT INTO ratings (score) VALUES(#{score})")
  end

end
