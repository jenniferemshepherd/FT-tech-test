require 'pg'
require './app/app.rb'
require "rspec/core/rake_task"

task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'ft_ratings_test')

  connection.exec("TRUNCATE ratings;")

  connection.exec("INSERT INTO ratings (score) VALUES(1);")
  connection.exec("INSERT INTO ratings (score) VALUES(2);")
end

task :create_table do
  p "creating table"
  ['ft_ratings', 'ft_ratings_test'].each do |database|
    connection = PG.connect(dbname: database)
    connection.exec("DROP TABLE IF EXISTS ratings;")
    connection.exec("CREATE TABLE ratings(id SERIAL PRIMARY KEY, score int);")
  end
end
