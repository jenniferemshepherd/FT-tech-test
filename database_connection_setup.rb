require './app/models/database_connection'

p ENV['DATABASE_URL']
p '1'
if ENV['DATABASE_URL']
  p ENV['DATABASE_URL']
  p '2'
  DatabaseConnection.setup('postgres://abrbvcwuhxfabn:fc3cf4c0766b420bd24923a8d37a48df76f383d5fef411871d327bdb5aa53124@ec2-54-247-81-88.eu-west-1.compute.amazonaws.com:5432/d2386betvm67o2')
elsif ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('ft_ratings_test')
else
  DatabaseConnection.setup('ft_ratings')
end


#  ||
