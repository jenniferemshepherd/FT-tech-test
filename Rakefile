require 'pg'

task :migrate do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'ft_ratings_test')

  connection.exec("TRUNCATE ratings;")

  connection.exec("INSERT INTO ratings (score) VALUES(1);")
  connection.exec("INSERT INTO ratings (score) VALUES(2);")
end

# task :setup do
#   p "Creating databases..."
#
#   ['bookmark_manager', 'bookmark_manager_test'].each do |database|
#     connection = PG.connect
#     connection.exec("CREATE DATABASE #{ database };")
#     connection = PG.connect(dbname: database)
#     connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60));")
#   end
# end
