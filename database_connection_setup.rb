require './app/models/database_connection'

if ENV['DATABASE_URL']
  DatabaseConnection.setup('postgres://abrbvcwuhxfabn:fc3cf4c0766b420bd24923a8d37a48df76f383d5fef411871d327bdb5aa53124@ec2-54-247-81-88.eu-west-1.compute.amazonaws.com:5432/d2386betvm67o2')
elsif ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('postgres://localhost/ft_ratings_test')
else
  DatabaseConnection.setup('postgres://localhost/ft_ratings')
end
