require './app/models/database_connection'

p ENV['DATABASE_URL']
if ENV['DATABASE_URL']
  p ENV['DATABASE_URL']
  DatabaseConnection.setup(ENV['DATABASE_URL'])
elsif ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('ft_ratings_test')
else
  DatabaseConnection.setup('ft_ratings')
end


#  ||
