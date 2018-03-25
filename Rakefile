require 'pg'

task :test_database_setup do
  p "Cleaning database..."

  connection = PG.connect(dbname: 'ft_ratings_test')

  connection.exec("TRUNCATE ratings;")

  connection.exec("INSERT INTO ratings (score) VALUES(1);")
  connection.exec("INSERT INTO ratings (score) VALUES(2);")
end
