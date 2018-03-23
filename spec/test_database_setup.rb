p "Setting up test database..."

require 'pg'

connection = PG.connect(dbname: 'ft_ratings_test')

connection.exec("TRUNCATE ratings")

connection.exec("INSERT INTO ratings (score) VALUES(1);")
connection.exec("INSERT INTO ratings (score) VALUES(2);")
connection.exec("INSERT INTO ratings (score) VALUES(-2);")
connection.exec("INSERT INTO ratings (score) VALUES(0);")
