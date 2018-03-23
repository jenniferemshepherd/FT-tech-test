require 'pg'

class Rating

  def self.all
    [1,2,-2,0]
  end

  # def self.create(3)
  #   connection = PG.connect(dbname: 'ft_ratings')
  #   result = connection.exec("INSERT INTO ratings (rating) VALUES(#{score})")
  # end

end
