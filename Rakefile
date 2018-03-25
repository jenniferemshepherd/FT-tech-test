require 'pg'

task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'ft_ratings_test')

  connection.exec("TRUNCATE ratings;")

  connection.exec("INSERT INTO ratings (score) VALUES(1);")
  connection.exec("INSERT INTO ratings (score) VALUES(2);")
end

task :setup do
  p "Creating databases..."

  ['ft_ratings', 'ft_ratings_test'].each do |database|
    connection = PG.connect
    connection.exec("CREATE DATABASE #{ database };")
    connection = PG.connect(dbname: database)
    connection.exec("CREATE TABLE ratings(id SERIAL PRIMARY KEY, score int);")
  end
end
