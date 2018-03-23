require 'pg'
require_relative 'database_connection'

class Rating

  def self.all
    result = DatabaseConnection.query("SELECT * FROM ratings")
    result.map { |rating| rating['score'].to_i }
  end

  def self.create(score)
    DatabaseConnection.query("INSERT INTO ratings (score) VALUES(#{score})")
  end

end
